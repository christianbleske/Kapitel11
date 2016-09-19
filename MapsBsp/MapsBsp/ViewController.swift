//
//  ViewController.swift
//  MapsBsp
//
//  Created by Christian Bleske on 03.03.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mkMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locCor = CLLocationCoordinate2D(
            latitude: 52.516208,
            longitude: 13.377893
        )
        
        //Für eigenes Icon notwendig
        //mkMapView.delegate = self
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: locCor, span: span)
        
        mkMapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = locCor       
        annotation.title = "Brandenburger Tor"
        annotation.subtitle = "Sehenswürdigkeit"
        
        mkMapView.addAnnotation(annotation)

    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let view = MKAnnotationView(annotation: annotation, reuseIdentifier: nil)
        view.image = UIImage(named: "poiicon.png")
        return view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

