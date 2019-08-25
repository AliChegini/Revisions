//
//  ViewController.swift
//  TableView
//
//  Created by Ehsan on 25/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCell
        cell.infoLabel.text = "Done"
        
        return cell
    }


}

