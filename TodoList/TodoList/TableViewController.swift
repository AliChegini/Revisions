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
    
    lazy var fetchedResultsController: NSFetchedResultsController<Item> = {
        let request: NSFetchRequest<Item> = Item.fetchRequest()
        let controller = NSFetchedResultsController(fetchRequest: request, managedObjectContext: self.managedObjectContext, sectionNameKeyPath: nil, cacheName: nil)
        
        return controller
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "TODO List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        
        fetchedResultsController.delegate = self
        
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            print(error)
        }
        
        
        
    }


    @objc func addAction() {
        let addVC = AddEntryController()
        addVC.managedObjectContext = managedObjectContext
        let newNav = UINavigationController(rootViewController: addVC)
        present(newNav, animated: true, completion: nil)
    }
    
    
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = fetchedResultsController.sections?[section] else {
            return 0
        }
    
        return section.numberOfObjects
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCell
        let item = fetchedResultsController.object(at: indexPath)
        
        cell.infoLabel.text = item.text
        
        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let item = fetchedResultsController.object(at: indexPath)
        managedObjectContext.delete(item)
        
        do {
             try managedObjectContext.saveChanges()
        } catch {
            print(error)
        }
    }
    
}


extension TableViewController: NSFetchedResultsControllerDelegate {
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.reloadData()
    }
}
