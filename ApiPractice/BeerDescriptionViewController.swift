//
//  BeerDescriptionViewController.swift
//  ApiPractice
//
//  Created by jficerai on 25/02/2021.
//

import UIKit
import WebKit

class BeerDescriptionViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var webKitForPicture: WKWebView!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var beer: Beer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let safeBeer = beer {
            
            self.title = safeBeer.name
            self.degreeLabel.text = " degree : \(safeBeer.degree)%"
            self.descriptionLabel.text = safeBeer.description
            
            let url = URL(string: safeBeer.pictureUrl)
            if let safeUrl = url {
                self.webKitForPicture.load(URLRequest(url: safeUrl))
            }
            
            
            
        } else {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
}
