//
//  Guest.swift
//  PassGenerator
//
//  Created by Ehsan on 31/07/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


class Guest {
    var areaAccess: [AreaAccess] = [.amusementAreas]
    var rideAccess: [RideAccess] = [.accessAllRides]
    var discountOnFood: Int?
    var discountOnMerchandise: Int?
    
}


class ClassicGuest: Guest {
    override init() {
        super.init()
    }
}


class VIPGuest: Guest {
    override init() {
        super.init()
        self.rideAccess = [.accessAllRides, .skipAllRides]
        self.discountOnFood = 10
        self.discountOnMerchandise = 20
    }
}


class ChildGuest: Guest {
    
    //let maxChildAge = 5
    
    init(dateOfBirth: Date) throws {
        super.init()
        
    }
}

