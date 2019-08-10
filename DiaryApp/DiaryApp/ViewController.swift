//
//  ViewController.swift
//  DiaryApp
//
//  Created by Ehsan on 10/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        //navigationItem.title = "Detail"
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(closeView))
    }
    

    @objc func closeView() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
