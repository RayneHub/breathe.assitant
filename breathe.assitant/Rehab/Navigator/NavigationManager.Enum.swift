//
//  Route.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

import SwiftUI

enum navigationManager
{
    case books
    //case locations(places: [Venue])
    case mapView(location: venues)
    case exercises(location: venues)
    case ALFKeepActive(index:Int)
    case exercise
    
    //case ingredients(items: [Ingredient])
    //case allergies(items: [Allergie])
    //case locations(places: [Location])
    //case map(location: Location)
    //case menuItem(item: any MenuItem)
    
    var describing:String {
        return String(describing:self);
    }
    
    
    var isChapter:Bool {
        switch self{
            
        case .ALFKeepActive(index: let index): return index == 0 ? true : false;
        default: return false;
            
        }
    }
}


