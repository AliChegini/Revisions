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
    
    lazy var yellowVC: YellowViewController = {
       let vc = YellowViewController()
        self.addChild(vc)
        return vc
    }()
    
    
    lazy var greenVC: GreenViewController = {
       let vc = GreenViewController()
        self.addChild(vc)
        return vc
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        
        
    }
    
    
    func setupViews() {
        let screenHeight = UIScreen.main.bounds.height
        
        navSegmentedControl.insertSegment(withTitle: "Yellow", at: 0, animated: false)
        navSegmentedControl.insertSegment(withTitle: "Green", at: 1, animated: false)
        navSegmentedControl.selectedSegmentIndex = 0
        
        view.addSubview(containerView)
        view.addSubview(navSegmentedControl)
        
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        navSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        navSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        navSegmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: screenHeight / -2.5).isActive = true
        
        navSegmentedControl.addTarget(self, action: #selector(madeSelection), for: .valueChanged)
        
    }
    
    
    func addAsChildVC(childVC: UIViewController) {
        addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.frame
        childVC.didMove(toParent: self)
    }
    
    
    @objc func madeSelection(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            yellowVC.view.isHidden = true
        }
        
        if sender.selectedSegmentIndex == 0 {
            greenVC.view.isHidden = true
        }
    }
    
    // continue debugging 
    

}

