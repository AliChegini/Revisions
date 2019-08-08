//
//  ViewController.swift
//  MovieNightAPI
//
//  Created by Ehsan on 07/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    let parser = JSONParser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Hello World"
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        
        
        
        // continue with populating array and showing data from API in tableview
        // create an array and loop through it
        parser.parseGenres { (result) in
            switch result {
            case .success(let data):
                print(data.genres.count)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCell
        cell.nameLabel.text = "oops"
        return cell
    }
    
    
    
    
    

}

