//
//  ViewController.swift
//  LocationPractice
//
//  Created by Ehsan on 29/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let manager = LocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        navigationItem.title = "Home"
        
        
        manager.requestLocation()
        
        
    }


}

