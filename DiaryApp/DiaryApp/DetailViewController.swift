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
    
    
    let closeButton: UIButton = {
       let button = UIButton()
        button.setTitle("Close", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    
    
    let label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello world for now"
        label.textColor = UIColor.red
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        setupViews()
        
    }
    
    
    func setupViews () {
        view.addSubview(closeButton)
        view.addSubview(label)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[v0]-40-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": closeButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-60-[v0]-60-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": closeButton]))
        
    }
    
    
    @objc func buttonTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // continue with button and label and practice auto layout constraint
    
}
