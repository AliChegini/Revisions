//
//  LocationManager.swift
//  LocationPractice
//
//  Created by Ehsan on 29/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation
import CoreLocation




class LocationManager: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    
    override init() {
        super.init()
        
        manager.delegate = self
        
        manager.requestWhenInUseAuthorization()
        
    }
    
    
    func requestLocation() {
        manager.requestLocation()
    }
}







