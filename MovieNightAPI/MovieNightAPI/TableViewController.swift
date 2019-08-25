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
    
    var resultArray: [Genre] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Hello World"
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        
        
        parser.parseGenres { (result) in
            switch result {
            case .success(let data):
                for genre in data.genres {
                    self.resultArray.append(genre)
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }

            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCell
        cell.nameLabel.text = resultArray[indexPath.row].name
        cell.idLabel.text = String(resultArray[indexPath.row].id)
        return cell
    }
    
    
    

}

