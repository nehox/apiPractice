//
//  Beer.swift
//  ApiPractice
//
//  Created by jficerai on 25/02/2021.
//

import Foundation


class Beer {
    
    let name: String
    let degree: String
    let description: String
    let pictureUrl: String
    
    
    init(name: String, degree: String, description: String, pictureUrl: String) {
        self.name = name
        self.degree = degree
        self.description = description
        self.pictureUrl = pictureUrl
        
    }
}
