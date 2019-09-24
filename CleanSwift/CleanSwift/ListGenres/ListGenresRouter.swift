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


class ListGenresRouter: ListGenresRoutable {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func showGenres(for id: Int) {
        // implement  later
    }
}
