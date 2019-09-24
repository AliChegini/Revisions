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



class ListGenresViewController: UITableViewController, ListGenresDisplayable {
    
    lazy var interactor: ListGenresBusinessLogic = ListGenresInteractor(
        presenter: ListGenresPresenter(viewController: self),
        worker: JSONParserWorker())
    
    var router: ListGenresRoutable?
    var viewModel: ListGenresModels.ViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.fetchGenres(with: ListGenresModels.FetchRequest())
    }
    
    
    
    func displayFetchedGenres(with viewModel: ListGenresModels.ViewModel) {
        self.viewModel = viewModel
        tableView.reloadData()
    }
    
    func display(error: AppModels.Error) {
        
    }
    
    
    
}
