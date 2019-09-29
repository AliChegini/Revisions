//
//  ShowGenreViewController.swift
//  CleanSwift
//
//  Created by Ehsan on 28/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit


protocol ShowGenreDisplayable: class {
    func displayGenre(with viewModel: ShowGenreModels.ViewModel)
    func display(error: AppModels.Error)
}


class ShowGenreViewController: UIViewController, ShowGenreDisplayable {
    
    // UI elements
    private let showGenreUIElements = ShowGenreUIs()
    
    lazy var interactor: ShowGenreBusinessLogic = ShowGenreInteractor(presenter: ShowGenrePresenter(viewController: self))
    lazy var router = ShowGenreRouter(viewController: self)
    var viewModel: ListGenresModels.ViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        showGenreUIElements.setupViews(in: view)
        
        interactor.fetchGenre(with: ShowGenreModels.Request())
        
        
    }
    
    // continue with he following function
    // there are two ways to populate lables
    // 1. using the router.genre directly to populate --- bad way
    // 2. send the router.genre as the request to interactor,
    // then send it to presenter to stringify then use the viewModel object to populate lables
    // it's lot of work but it is needed
    func displayGenre(with viewModel: ShowGenreModels.ViewModel) {
        showGenreUIElements.nameLabel.text = viewModel.name
        showGenreUIElements.idLabel.text = viewModel.id
    }
    
    
    func display(error: AppModels.Error) {
        
    }

}
