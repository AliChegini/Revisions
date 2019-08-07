//
//  ViewController.swift
//  MovieNightAPI
//
//  Created by Ehsan on 07/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let parser = JSONParser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser.parseGenres { (result) in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    // continue by creating tableview in code


}

