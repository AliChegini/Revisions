//
//  DetailViewController.swift
//  TodoList
//
//  Created by Ehsan on 28/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {
    
    var managedObjectContext: NSManagedObjectContext!
    
    var item: Item?
    
    
    let deleteButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Delete", for: .normal)
        button.addTarget(self, action: #selector(deleteAction), for: .touchUpInside)
        
        return button
    }()
    
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        
        return textField
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        
        navigationItem.title = "Edit Entry"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveAction))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelAction))
        
        setupViews()
        textField.text = item?.text
        
    }
    
    
    @objc func saveAction() {
        if let item = item, let newText = textField.text {
            item.text = newText
            do {
                try managedObjectContext.saveChanges()
            } catch {
                print(error)
            }
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    @objc func cancelAction() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func deleteAction() {
        if let item = item {
            managedObjectContext.delete(item)
            do {
                try managedObjectContext.saveChanges()
            } catch {
                print(error)
            }
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    func setupViews() {
        view.addSubview(deleteButton)
        view.addSubview(textField)
        
        deleteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        deleteButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        deleteButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        deleteButton.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 200).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
    }
    
    
}
