//
//  JSONDownloader.swift
//  StarWarsAPI
//
//  Created by Ehsan on 02/08/2019.
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
    
    func downloadJSON(with stringURL: String, completionHandler completion: @escaping (Data?, StarWarsErrors?) -> Void) {
        guard let url = URL(string: stringURL) else {
            completion(nil, .couldNotConstructURL)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, .requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                if let data = data {
                    completion(data, nil)
                }
            } else {
                completion(nil, .responseUnsuccessful)
            }
        }
        
        task.resume()
    }
    
    
}

