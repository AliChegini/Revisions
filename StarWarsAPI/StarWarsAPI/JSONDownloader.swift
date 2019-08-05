//
//  JSONDownloader1.swift
//  StarWarsAPI
//
//  Created by Ehsan on 04/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    
    func downloadJSON(stringURL: String, completionHandler completion: @escaping (Result<Data, StarWarsErrors>) -> Void) {
        guard let url = URL(string: stringURL) else {
            completion(.failure(.couldNotConstructURL))
            return
        }
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let response = response as? HTTPURLResponse else {
                completion(.failure(.requestFailed))
                return
            }
            
            if response.statusCode == 200 {
                if let data = data {
                    completion(.success(data))
                }
            } else {
                completion(.failure(.responseUnsuccessful))
            }
            
        }
        
        task.resume()
        
    }
    
}
