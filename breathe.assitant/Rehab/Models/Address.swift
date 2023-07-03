//
//  Address.swift
//  Rayne Health
//
//  Created by Christopher Raven on 18/06/2023.
//
import SwiftUI

struct Address : Identifiable, Hashable {
    
    let id: UUID = UUID()
    
    // MARK: Enum.Identifier
    
    var enumIdentifier:venues
    
    var Error:Bool = false
    
    // MARK: Address
    
    let line1:String
    let line2:String
    var town:String { enumIdentifier.name }
    let postCode:String
    
    // MARK: Standard Address intialiser
    
    init(forVenue enumIdentifier:venues, number:Int, street: String, area: String = "", postCode: String) {
        self.enumIdentifier = enumIdentifier
        self.line1 = "\(number) " + street
        self.line2 = area
        self.postCode = postCode
    }
    
    // MARK: Named Address intialiser
    
    init(forVenue enumIdentifier:venues,  street placeName: String, area: String, postCode: String) {
        self.enumIdentifier = enumIdentifier
        self.line1 = placeName
        self.line2 = area
        self.postCode = postCode
    }
}


