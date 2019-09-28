//
//  ShowGenreViewController.swift
//  CleanSwift
//
//  Created by Ehsan on 28/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit


protocol ShowGenreDisplayable: class {
    
}


class ShowGenreViewController: UIViewController, ShowGenreDisplayable {
    
    lazy var router = ShowGenreRouter(viewController: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        //print(router.dataStore)
        
    }
    
    
    func displayGenre(with viewModel: ShowGenreModels) {
        
    }
    
    
    func display(error: AppModels.Error) {
        
    }

}
