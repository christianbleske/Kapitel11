//
//  MapAnnotation.swift
//  MapsBsp
//
//  Created by Christian Bleske on 03.03.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import Foundation
import MapKit

class MapAnnotation : NSObject, MKAnnotation {
    var _title:NSString = ""
    var _subtitle:NSString = ""
    var coordinate:CLLocationCoordinate2D

    init (_title : NSString, _subtitle : NSString, _coordinate : CLLocationCoordinate2D) {
        self._title = _title
        self._subtitle = _subtitle
        self.coordinate = _coordinate
    }
}
