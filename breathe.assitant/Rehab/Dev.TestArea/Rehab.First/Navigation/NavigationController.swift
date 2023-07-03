//
//  Controller.swift
//  Rayne Health
//
//  Created by Christopher Raven on 25/05/2023.
//

import SwiftUI

// MARK: - NAVIGATION CONTROLLER
internal class Navigator: ObservableObject
{
    // MARK: - Public Variables
    static public var subtitle:String="pulminary rehabilitation"
    
    
    static public var subCaption:String="Home Page"
    static public var animationTimer: Double = 0;
    static public var scrollDisabled:Bool = true;
    
    // MARK: - Observed Pages
    @Published var root:any View = RootPage_R()
    @Published var page:any View =  RootPage_R()
    @Published var back:any View = RootPage_R()
    
    static var global:Navigator = Navigator();
    
    func navigate(_ page:any View)
    {
        back=self.page;
        self.page=page;
    }
    
    func navigate(_ page:any View, subTitle:String = "pulminary rehabilitation")
    {
        back=self.page;
        self.page=page;
        Navigator.subtitle=subTitle;
    }
}
