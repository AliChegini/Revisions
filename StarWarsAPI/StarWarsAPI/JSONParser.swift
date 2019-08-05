//
//  JSONParser1.swift
//  StarWarsAPI
//
//  Created by Ehsan on 04/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation

struct Person: Decodable {
    var name: String?
    var mass: String?
    var birth_year: String?
    var films: [String]
}


class JSONParser {
    private let downloader = JSONDownloader()
    
    private let url = "https://swapi.co/api/people/1/"
    
    func parsePerson(completionHandler completion: @escaping (Result<Person, StarWarsErrors>) -> Void) {
        
        downloader.downloadJSON(stringURL: url) { (result) in
            switch result {
            case .success(let person):
                print(person)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    // continue with the following tutorial
    // https://medium.com/@alfianlosari/building-simple-async-api-request-with-swift-5-result-type-alfian-losari-e92f4e9ab412
    // still need to parse the result type in future session
    
}



