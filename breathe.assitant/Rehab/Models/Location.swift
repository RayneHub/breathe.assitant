//
//  Location.swift
//  Rayne Health
//
//  Created by Christopher Raven on 18/06/2023.
//

import SwiftUI
import MapKit

struct Location :  Hashable, Identifiable
{
    // MARK: Identifier
    var id:UUID = UUID()
    var enumIdentifier:venues

    // MARK: Virtual
    var virtual:Bool { latitude == 0 && longitude == 0 }
    
    // MARK: Map Properties
    let latitude: Double
    let longitude: Double
    
    // MARK: Computed Map Properties
    var coordinateCenter:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var CoordinateRegion:MKCoordinateRegion {
        MKCoordinateRegion (center: coordinateCenter, latitudinalMeters: 250, longitudinalMeters: 250)
    }
    
    // MARK: Map Functions
    func openInMaps(destinationName itemName:String)
    {
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinateCenter, addressDictionary:nil))
        mapItem.name = itemName
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
    }
    
    init(forVenue idx:venues, latitude: Double, longitude: Double) {
        self.enumIdentifier = idx
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(forVenue idx:venues, latitude: Double, longitude: Double, source:venues) {
        self.enumIdentifier = idx
        
        self.latitude = 0
        self.longitude = 0
    }
    
    
}

