//
//  MyCell.swift
//  MovieNightAPI
//
//  Created by Ehsan on 08/08/2019.
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
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Name Label"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    
    let idLabel: UILabel = {
       let label = UILabel()
        label.text = "ID Label"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    
    func setupViews() {
        addSubview(nameLabel)
        addSubview(idLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-[v1]-20-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel, "v1": idLabel]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v1]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v1" : idLabel]))
    }
    

}
