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


class ListGenresInteractor: ListGenresBusinessLogic {
    
    let presenter: ListGenresPresentable
    let genresWorker: JSONParserWorker
    
    
    init(presenter: ListGenresPresentable, worker: JSONParserWorker) {
        self.presenter = presenter
        self.genresWorker = worker
    }
    
    
    func fetchGenres(with request: ListGenresModels.FetchRequest) {
        genresWorker.parseGenres { genres in
            do {
                // success case
                let value = try genres.get()
                self.presenter.presentFetchedGenres(for: ListGenresModels.Response(allGenresRaw: value))
            } catch {
                // failure case
                print(error)
            }
            
        }
    }
    
    
}
