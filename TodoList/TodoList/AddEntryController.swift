//
//  AddEntryController.swift
//  TodoList
//
//  Created by Ehsan on 22/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class AddEntryController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        
        navigationItem.title = "New One"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveAction))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelAction))
        
    }
    
    
    @objc func saveAction() {
        dismiss(animated: true, completion: nil)
    }
    
    
    @objc func cancelAction() {
        dismiss(animated: true, completion: nil)
    }
    


}
