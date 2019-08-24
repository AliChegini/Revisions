//
//  MyCell.swift
//  TodoList
//
//  Created by Ehsan on 24/08/2019.
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
        addSubview(infoLabel)
        
        infoLabel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : infoLabel]))
        infoLabel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : infoLabel]))
        
    }
    
    
    var infoLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Testing..."
        return label
    }()
    
    

}
