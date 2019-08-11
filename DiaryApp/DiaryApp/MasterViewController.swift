//
//  ViewController.swift
//  DiaryApp
//
//  Created by Ehsan on 10/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    let navSegmentedControl = UISegmentedControl()
    let containerView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        
        
    }
    
    
    func setupViews() {
        let screenHeight = UIScreen.main.bounds.height
        
        navSegmentedControl.insertSegment(withTitle: "Yellow", at: 0, animated: true)
        navSegmentedControl.insertSegment(withTitle: "Green", at: 1, animated: true)
        navSegmentedControl.selectedSegmentIndex = 0
        
        view.addSubview(navSegmentedControl)
        view.addSubview(containerView)
        
        navSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        navSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        navSegmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: screenHeight / -2.5).isActive = true
        
        // continue with the following tutorial
        // https://medium.com/@Dougly/creating-a-custom-view-controller-navigation-interface-programmatically-swift-3-1-8c9e582cdb30
        
    }
    
    
    

}

