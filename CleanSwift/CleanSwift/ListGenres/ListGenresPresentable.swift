//
//  ListGenresPresentable.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//


protocol ListGenresPresentable {
    func presentFetchedGenres(for response: ListGenresModels.Response)
    func presentFetchedGenres(error: DataError)
}


struct ListGenresPresenter: ListGenresPresentable {
    private weak var viewController: ListGenresDisplayable?
    
    init(viewController: ListGenresDisplayable?) {
        self.viewController = viewController
    }
    
    
    func presentFetchedGenres(for response: ListGenresModels.Response) {
        
    }
    
    
}





