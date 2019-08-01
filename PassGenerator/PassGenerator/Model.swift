//
//  Model.swift
//  PassGenerator
//
//  Created by Ehsan on 31/07/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


enum AreaAccess: String {
    case amusementAreas
    case kitchenAreas
    case rideControlAreas
    case maintenanceAreas
    case officeAreas
}


enum RideAccess {
    case accessAllRides
    case skipAllRides
}



// Enum for Initialization errors
enum InitializerError: Error {
    case missingDateOfBirth
    case missingFirstName
    case missingLastName
    case missingStreetAddress
    case missingCity
    case missingState
    case missingZipCode
    case olderThanAgeLimit
}
