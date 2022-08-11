//
//  ViewController.swift
//  HanoExerciseMap
//
//  Created by Seokjune Hong on 2022/08/11.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        setRegionAndAnnotation()
    }
    
    func setRegionAndAnnotation() {
        let center = CLLocationCoordinate2D(latitude: 37.621068, longitude:  127.041060)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = center
        annotation.title = "산책하기 좋은 장소"
        
        mapView.addAnnotation(annotation)
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordinate = locations.last?.coordinate {
            
        }
    }
}
