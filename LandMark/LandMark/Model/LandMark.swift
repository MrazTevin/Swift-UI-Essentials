//
//  LandMark.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import Foundation
import SwiftUI
import CoreLocation


struct LandMark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var city: String
    var description: String
    
    // add the image property
    // You make the property private because users of the Landmarks structure care only about the image itself.
    private var imageName: String // comes from the json file
    var image: Image {
        Image(imageName)
    }
    
    // Next, we manage information about the landmark’s location.
    private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
           var latitude: Double // since they conform to Degrees and they are doubles
           var longitude: Double
       }
}
