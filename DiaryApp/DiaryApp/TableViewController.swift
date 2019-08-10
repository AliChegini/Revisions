//
//  ViewController.swift
//  DiaryApp
//
//  Created by Ehsan on 10/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Hello World"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
    }
    
    @objc func addTapped() {
        let viewController = ViewController()
        viewController.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: nil)
        present(viewController, animated: true, completion: nil)
    }

    // continue with all in code approach
    // continue messenger app toturial
    // Objective of this project is to do all activities in code
    // like performing segue and show different views all in code
    

}

