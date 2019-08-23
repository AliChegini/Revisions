//
//  AddEntryController.swift
//  TodoList
//
//  Created by Ehsan on 22/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreData

class AddEntryController: UIViewController {
    
    let managedObjectContext = CoreDataStack().managedObjectContext
    
    let textField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        return textField
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        
        navigationItem.title = "Add Entry"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveAction))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelAction))
        
        setupViews()
        
    }
    
    
    @objc func saveAction() throws {
        
        guard let text = textField.text, !text.isEmpty else {
            // alert the user for empty text field
            let alert = UIAlertController(title: "Error", message: "Please insert some text", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        guard let item = NSEntityDescription.insertNewObject(forEntityName: "Item", into: managedObjectContext) as? Item else {
            throw TodoListErrors.couldNotInsertItem
        }
        
        item.text = text
        
        do {
            try managedObjectContext.saveChanges()
        } catch {
            print("This is an Error: \(error)")
            throw error
        }
        print("successfully saved the item")
        dismiss(animated: true, completion: nil)
    }
    
    
    @objc func cancelAction() {
        dismiss(animated: true, completion: nil)
    }
    

    func setupViews() {
        view.addSubview(textField)
        
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    }
    
    

}
