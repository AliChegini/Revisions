//
//  ViewController.swift
//  TodoList
//
//  Created by Ehsan on 21/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "TODO List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        
    }


    @objc func addAction() {
        let addVC = AddEntryController()
        let newNav = UINavigationController(rootViewController: addVC)
        present(newNav, animated: true, completion: nil)
    }
    
    
}

