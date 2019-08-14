//
//  ViewController.swift
//  DiaryApp
//
//  Created by Ehsan on 14/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.title = "Hello World"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        
        
    }
    
    @objc func addAction() {
        let detailVC = DetailViewController()
        present(detailVC, animated: true, completion: nil)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyCell
            
        return cell
    }
    


}

