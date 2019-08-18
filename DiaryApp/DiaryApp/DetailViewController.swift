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
       let button = UIButton(type: .roundedRect)
        button.setTitle("Close", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    
    
    let label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello world for now"
        label.textColor = UIColor.black
        label.textAlignment = .center
        
        return label
    }()
    
    
    let textView: UITextView = {
       let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.backgroundColor = UIColor.white
        
        return text
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        setupViews()
        
    }
    
    
    func setupViews () {
        view.addSubview(closeButton)
        view.addSubview(textView)
        
        label.text = text
        view.addSubview(label)
        
        
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        // Using top and bottom anchor to properly place the label and button
        closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        closeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    
    @objc func buttonTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // TODO:
    // continue with Core Data Stack from scratch
    // continue with https://www.youtube.com/watch?v=9RydRg0ZKaI
    

}
