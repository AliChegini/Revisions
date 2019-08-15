//
//  DetailViewController.swift
//  DiaryApp
//
//  Created by Ehsan on 14/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import Foundation

class DetailViewController: UIViewController {

    var text = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        createButton()
        createLabel()
        setupDetailVC()
        
    }
    
    
    @objc func buttonTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func createButton() {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Close", for: .normal)
        button.backgroundColor = .white
        button.frame = CGRect(x: 200, y: 200, width: 50, height: 30)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    func createLabel() {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .red
        label.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        self.view.addSubview(label)
        
    }
    
    
    func setupDetailVC () {
        
    }
    
    
    // continue with autolayout constraint for (all in code) for a simple view, not a cell!
    
}
