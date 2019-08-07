//
//  MovieNightErrors.swift
//  MovieNightAPI
//
//  Created by Ehsan on 07/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


enum MovieNightErrors: Error {
    case couldNotConstructURL
    case requestFailed
    case responseUnsuccessful
    case couldNotParseJSON
}
