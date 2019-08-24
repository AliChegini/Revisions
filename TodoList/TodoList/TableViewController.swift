//
//  ViewController.swift
//  TodoList
//
//  Created by Ehsan on 21/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    let managedObjectContext = CoreDataStack().managedObjectContext
    
    var items: [Item] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "TODO List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        
        
        let request: NSFetchRequest<Item> = Item.fetchRequest()
        
        do {
            items = try managedObjectContext.fetch(request)
        } catch {
            print(error)
        }
        
        
        
        
        
    }


    @objc func addAction() {
        let addVC = AddEntryController()
        let newNav = UINavigationController(rootViewController: addVC)
        present(newNav, animated: true, completion: nil)
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCell
        
        return cell
    }
    
    
    
    
}

