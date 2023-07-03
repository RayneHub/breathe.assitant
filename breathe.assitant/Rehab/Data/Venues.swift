//
//  Data.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

enum venues:Int, CaseIterable
{
    var index:Int {
        rawValue
    }
    
    var name:String {
        String(describing: self)
    }
    
    var virtual:Bool{
        index == 0
    }
    
    // MARK: Cases with associated Exercise List but no associated Address or Location
    case Virtual = 0
    
    // MARK: Returns All Cases Excluding Virtual - Since We do not want to show a Map for .Virtual
    static var mapList:[venues]
    {
        var list:[venues]=self.allCases
        list.removeFirst()
        list.removeLast()
        return list
    }
    
    // MARK: Returns All Cases Excluding Virtual - Since We do not want to show a Map for .Virtual
    static var list:[venues]
    {
        return self.allCases
    }
    
    // MARK: Validates Assocaicated Arrays Contains a Value for ease enum case
    static var associatedArraysValidated:  ErrorData
    {
        for venue in mapList
        {
            if !(VenueData.locations.contains(where: {$0.enumIdentifier == venue}) && VenueData.addressBook.contains(where: {$0.enumIdentifier == venue}))
            {
                return false;
            }
        }
        return true
    }
    
    // MARK: Cases with associated Address, location and Exercises
    case Braintree = 1
    case Chelmsford = 2
    case Halstead = 3
    case Maldon = 4
    case Southend = 5
    case Witham = 6
    
    // Gets the Assocatioted location from the locations Array. Returns a special Error Version if not found
    var location:Location?{
        guard let idx =  VenueData.locations.firstIndex(where: {$0.enumIdentifier == self}) else { return nil }
        return VenueData.locations[idx]
    }
    
    // Gets the Assocatioted location from the locations Array. Returns a special Error Version if not found
    var address:Address?{
        guard let idx = VenueData.addressBook.firstIndex(where: {$0.enumIdentifier == self}) else { return nil }
        return VenueData.addressBook[idx]
    }
    
    // Gets the Assocatioted exercises from the approritae Array.
    var exercises:[exercise]{
        switch self {
        case .Virtual:
            return virtualExercises
        default:
            return defaultExercises
        }
    }
}










