//
//  LocationManager.swift
//  LocationPractice
//
//  Created by Ehsan on 29/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation
import CoreLocation


protocol LocationManagerDelegate: class {
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion)
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion)
}



class LocationManager: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    
    weak var delegate: LocationManagerDelegate?
    
    override init() {
        super.init()
        
        manager.delegate = self
        
        manager.requestWhenInUseAuthorization()
        
    }
    

    func requestLocation() {
        manager.requestLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations[0])
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
    
    
}


extension LocationManager {
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        delegate?.locationManager(manager, didEnterRegion: region)
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        delegate?.locationManager(manager, didExitRegion: region)
    }
}

