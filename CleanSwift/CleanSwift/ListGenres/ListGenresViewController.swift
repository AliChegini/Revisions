//
//  ListGenresViewController.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit


protocol ListGenresDisplayable: class {
    func displayFetchedGenres(with viewModel: ListGenresModels.ViewModel)
    func display(error: AppModels.Error)
}



class ListGenresViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
