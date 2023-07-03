//
//  VenueAddresses.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

  
struct VenueData
{
    // MARK: Locations for venues enumertion
    static let addressBook:[Address] = [
        Address(forVenue:.Braintree, street: "St Pauls Parsonage", area: "Hay Lane South", postCode: "CM7 3DY"),
        Address(forVenue:.Chelmsford, street: "St Pauls Parsonage", area: "Hay Lane South", postCode: "CM7 3DY"),
        Address(forVenue:.Halstead, street: "St Pauls Parsonage", area: "Hay Lane South", postCode: "CM7 3DY"),
        Address(forVenue:.Maldon, street: "St Pauls Parsonage", area: "Hay Lane South", postCode: "CM7 3DY"),
        Address(forVenue:.Southend, street: "St Pauls Parsonage", area: "Hay Lane South", postCode: "CM7 3DY"),
        Address(forVenue:.Witham, street: "St Pauls Parsonage", area: "Hay Lane South", postCode: "CM7 3DY")
    ]
    
    // MARK: Locations for venues enumertion
    // See:[MapPreview](x-source-tag://MapPreview) and [MapPinPreview](x-source-tag://MapPinPreview)
    static let locations:[Location] =
    [
        Location(forVenue: .Braintree, latitude: 51.87811428495534, longitude: 0.5707186005038214 ), //Braintree
        Location(forVenue: .Chelmsford, latitude: 51.751265847811915, longitude: 0.4975341753759649), //Chelmsford
        Location(forVenue: .Halstead, latitude: 51.94836684402118, longitude: 0.6378766253712441 ), //Halstead
        Location(forVenue: .Maldon, latitude: 51.73353393572538, longitude: 0.6717049089389553 ), //Maldon
        Location(forVenue: .Southend, latitude: 51.55397267802864, longitude: 0.687700611865282 ), //Southend
        Location(forVenue: .Witham, latitude: 51.796760109487614, longitude: 0.6336082807477796 )
    ]
    
}


