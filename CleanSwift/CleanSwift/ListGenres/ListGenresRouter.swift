//
//  ListGenresRouter.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

protocol ListGenresRoutable {
    func showGenres(for id: Int)
}


class ListGenresRouter: ListGenresRoutable, ListGenresDataStore {
    
    weak var viewController: UIViewController?
    
    var genres: [Genre]?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func showGenres(for id: Int) {
        let vc = ShowGenreViewController()
        //vc.router.dataStore = dataStore?.filter { $0.id == id }.first
        print(genres)
        
        viewController?.present(vc, animated: true, completion: nil)
    }
}
