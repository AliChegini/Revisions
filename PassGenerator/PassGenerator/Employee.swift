//
//  Employee.swift
//  PassGenerator
//
//  Created by Ehsan on 01/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


class Employee {
    
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: String?
    var areaAccess: [AreaAccess] = []
    var rideAccess: [RideAccess] = [.accessAllRides]
    var discountOnFood: Int? = 15
    var discountOnMerchandise: Int? = 25
    
    init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
        
        guard let firstNameUnwrapped = firstName else {
            throw InitializerError.missingFirstName
        }
        
        guard let lastNameunwrapped = lastName else {
            throw InitializerError.missingLastName
        }
        
        guard let streetAddressUnwrapped = streetAddress else {
            throw InitializerError.missingStreetAddress
        }
        
        guard let cityUnwrapped = city else {
            throw InitializerError.missingCity
        }
        
        guard let stateUnwrapped = state else {
            throw InitializerError.missingState
        }
        
        guard let zipCodeUnwrapped = zipCode else {
            throw InitializerError.missingZipCode
        }
        
        
        self.firstName = firstNameUnwrapped
        self.lastName = lastNameunwrapped
        self.streetAddress = streetAddressUnwrapped
        self.city = cityUnwrapped
        self.state = stateUnwrapped
        self.zipCode = zipCodeUnwrapped
    }
}



class FoodServiceEmployee: Employee {
    override init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
        try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
        self.areaAccess = [.amusementAreas, .kitchenAreas]
    }
}



class RideServiceEmployee: Employee {
    override init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
        try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
        self.areaAccess = [.amusementAreas, .rideControlAreas]
    }
}


class MaintenanceEmployee: Employee {
    override init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
        try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
        self.areaAccess = [.amusementAreas, .kitchenAreas, .rideControlAreas, .maintenanceAreas]
    }
}



class Manager: Employee {
    override init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
        try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
        self.areaAccess = [.amusementAreas, .kitchenAreas, .rideControlAreas, .maintenanceAreas, .officeAreas]
        self.discountOnFood = 25
        self.discountOnMerchandise = 25
    }
}


