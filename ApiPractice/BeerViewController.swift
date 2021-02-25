//
//  BeerViewController.swift
//  ApiPractice
//
//  Created by jficerai on 25/02/2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class BeerViewController: UITableViewController {
    
    
    var beers: [Beer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Beer List"
        
        refreshBeerList()
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "beerCell")
        
        cell.textLabel?.text = self.beers[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return beers.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "segueToBeerDescription", sender: beers[indexPath.row])
    }
    
    func refreshBeerList() {
        
        self.beers.removeAll()

        AF.request("https://api.punkapi.com/v2/beers").response { response in
            let json = JSON(response.data)
            
            let beersJSON = json.arrayValue
            
            for beer in beersJSON {
                self.beers.append(Beer(name: beer["name"].stringValue,
                                       degree: beer["abv"].stringValue,
                                       description: beer["description"].stringValue,
                                       pictureUrl: beer["image_url"].stringValue)
                )
            }
            self.tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToBeerDescription" {
            
            let beer = sender as? Beer
            
            if let viewControllerDestination = segue.destination as? BeerDescriptionViewController {
                viewControllerDestination.beer = beer
            }
            
        }
    }
    
    
}
