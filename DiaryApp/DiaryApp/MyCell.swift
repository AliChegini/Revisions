//
//  MyCell.swift
//  DiaryApp
//
//  Created by Ehsan on 14/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit


class MyCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        addSubview(nameLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        
        
        
    }
    
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "I am name label"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
}


