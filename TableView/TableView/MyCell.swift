//
//  MyCell.swift
//  TableView
//
//  Created by Ehsan on 25/08/2019.
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
    
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Testing..."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func setupViews() {
        addSubview(infoLabel)
        
        // infoLable.addContraints can cause the app to crash
        // when setting up tableViews addContraint is enough
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : infoLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : infoLabel]))
        
    }
    
    
}
