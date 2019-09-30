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
    
    lazy var interactor: ShowGenreBusinessLogic = ShowGenreInteractor(
        presenter: ShowGenrePresenter(viewController: self))
    lazy var router = ShowGenreRouter(viewController: self)
    var viewModel: ListGenresModels.ViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        showGenreUIElements.setupViews(in: view)
        
        interactor.fetchGenre(with: ShowGenreModels.Request(genre: router.genre))
        
    }
    
    @objc func dismissAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func displayGenre(with viewModel: ShowGenreModels.ViewModel) {
        showGenreUIElements.nameLabel.text = viewModel.name
        showGenreUIElements.idLabel.text = viewModel.id
    }
    
    
    func display(error: AppModels.Error) {
        
    }

}
