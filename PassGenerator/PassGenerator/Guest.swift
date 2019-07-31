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
}


class ClassicGuest: Guest {
    override init() {
        super.init()
    }
}



