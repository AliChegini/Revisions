//
//  ViewController.swift
//  StarWarsAPI
//
//  Created by Ehsan on 02/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let parser = JSONParser()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser.parsePerson { (result) in
            switch result {
            case .success(let person):
                print(person)
            case .failure(let error):
                print(error)
            }
        }
        
    }


}

