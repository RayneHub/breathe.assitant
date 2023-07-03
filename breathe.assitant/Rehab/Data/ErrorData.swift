//
//  ErrorData.swift
//  Rayne Health
//
//  Created by Christopher Raven on 20/06/2023.
//

import SwiftUI

struct ErrorData:ExpressibleByBooleanLiteral {
    
    init(booleanLiteral:Bool){
        self.err = booleanLiteral
    }
    
    init(title:String, message:String){
        self.err = true
        self.title = title
        self.message = message
    }
    
    init(message:String){
        self.err = true
        self.message = message
    }
    
    var title:String = "Oopsie"
    var message:String = "An Error Occured: Please check the debug output for further Information"
    
    var err:Bool=false;
    
    static func ==(lhs: ErrorData, rhs: Bool) -> Bool {
        return lhs.err == rhs
    }
    
}


