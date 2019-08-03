//
//  JSONParser.swift
//  StarWarsAPI
//
//  Created by Ehsan on 03/08/2019.
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
    
    let url = "https://swapi.co/api/people/1/"
    
    private let downloader = JSONDownloader()
    
    func parsePerson(completionHandler completion: @escaping (Person?, StarWarsErrors?) -> Void) {
        downloader.downloadJSON(with: url) { (data, error) in
            if let data = data {
                let decoder = JSONDecoder()
                
                do {
                    let person = try decoder.decode(Person.self, from: data)
                    completion(person, nil)
                } catch {
                    completion(nil, .couldNotParseJSON)
                }
                
            }
        }
        
    }
    
    
}


