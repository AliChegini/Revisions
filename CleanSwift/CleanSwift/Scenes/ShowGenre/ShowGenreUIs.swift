//
//  ShowGenreUIs.swift
//  CleanSwift
//
//  Created by Ehsan on 29/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ShowGenreUIs: UIView {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        
        return label
    }()
    
    
    let idLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        
        return label
    }()
    
    
    
    func setupViews(in view: UIView) {
        view.addSubview(nameLabel)
        view.addSubview(idLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            idLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
            ])
    }
    
    
}
