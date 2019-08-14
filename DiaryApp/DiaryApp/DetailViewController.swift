//
//  DetailViewController.swift
//  DiaryApp
//
//  Created by Ehsan on 14/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        let button = UIButton(type: .roundedRect)
        button.setTitle("Close", for: .normal)
        button.backgroundColor = .white
        button.frame = CGRect(x: 10, y: 10, width: 40, height: 20)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        setupDetailVC()
    }
    
    
    @objc func buttonTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    func setupDetailVC () {
        
    }
    
    
    // continue with passing data from Main view to detailVC all in code
    

}
