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
            case .success(let data):
                let decoder = JSONDecoder()
                do {
                    let person = try decoder.decode(Person.self, from: data)
                    completion(.success(person))
                } catch {
                    completion(.failure(.couldNotParseJSON))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    

}



