//
//  ListGenresInteractor.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//


protocol ListGenresBusinessLogic {
    func fetchGenres(with request: ListGenresModels.FetchRequest)
}


struct ListGenresInteractor: ListGenresBusinessLogic {
    
    private let presenter: ListGenresPresentable
    private let genresWorker: GenresWorkerType
    
    init(presenter: ListGenresPresentable, genresWorker: GenresWorkerType) {
        self.presenter = presenter
        self.genresWorker = genresWorker
    }
    
    
    func fetchGenres(with request: ListGenresModels.FetchRequest) {
        genresWorker.fetch {
            // implement later
        }
    }
    
    
    
}
