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
        self.addAsChildVC(childVC: vc)
        return vc
    }()
    
    
    lazy var greenVC: GreenViewController = {
       let vc = GreenViewController()
        self.addAsChildVC(childVC: vc)
        return vc
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    
    func setupViews() {
        let screenHeight = UIScreen.main.bounds.height
        
        navSegmentedControl.addTarget(self, action: #selector(madeSelection), for: .valueChanged)
        
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
        navSegmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    
    
    func addAsChildVC(childVC: UIViewController) {
        addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = self.view.frame
        childVC.didMove(toParent: self)
    }
    
    
    @objc func madeSelection(_ sender: UISegmentedControl) {
        yellowVC.view.isHidden = sender.selectedSegmentIndex == 1
        greenVC.view.isHidden = sender.selectedSegmentIndex == 0
    }
    
}

