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
    
    //MARK: - Variables
    var beers: [Beer] = []
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Beer List"
        refreshBeerList()
    }
    
    //MARK: - Custom Functions
    func refreshBeerList() {
        self.beers.removeAll()
        BeerApi.getBeers().done { beersResponse in
            self.beers = beersResponse
            self.tableView.reloadData()
        }
    }
    
    
    //MARK: - Datasource
    
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
    
    
    //MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToBeerDescription" {
            
            let beer = sender as? Beer
            
            if let viewControllerDestination = segue.destination as? BeerDescriptionViewController {
                viewControllerDestination.beer = beer
            }
            
        }
    }
    
    
}
