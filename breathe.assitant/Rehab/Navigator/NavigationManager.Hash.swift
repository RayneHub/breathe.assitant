//
//  Route.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

extension navigationManager: Hashable {
    
    static var AlfProgammeUnlocked:Bool
    {
        let val =  UserDefaults.standard.integer(forKey: "ALF.Begin") + UserDefaults.standard.integer(forKey: "ALF.Level")
        return val==2 ? true:false;
    }
    
    func hash(into hasher: inout Hasher)
    {
        hasher.combine(self.hashValue)
    }
    
    static func == (lhs: navigationManager, rhs: navigationManager) -> Bool
    {
        switch (lhs, rhs) {
        case (.mapView, .mapView):
            return true
            
        case (.ALFKeepActive, .ALFKeepActive):
            return true
        case (.books, .books):
            return true
        case (.exercise, .exercise):
            return true
        case (.exercises, .exercises):
            return true
        default:
            return false
        }
    }
}
