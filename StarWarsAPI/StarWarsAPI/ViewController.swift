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
        
        parser.parsePerson { (data, error) in
            if let data = data {
                print(data)
            }
        }
        
    }


}

