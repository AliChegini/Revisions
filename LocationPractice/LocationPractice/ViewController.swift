//
//  ViewController.swift
//  LocationPractice
//
//  Created by Ehsan on 29/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, LocationManagerDelegate {
    
    private let manager = LocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        manager.delegate = self
        manager.requestLocation()
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("did enter region \(region)")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("did exit region \(region)")
    }
    
    
    
    
    
}
