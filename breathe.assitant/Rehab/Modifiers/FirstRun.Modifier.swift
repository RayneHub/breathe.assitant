//
//  NavigationPreviewer.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI


private struct FirstRunView<FirstContent:View>: ViewModifier{
    
    @AppStorage var run: Bool
    @ViewBuilder var firstContent:FirstContent
    
    func body(content: Content) -> some View {
        
        if(run){
            firstContent
        }
        else {
            content
        }
    }
    
    init(firstContent:FirstContent) {
        self._run = AppStorage(wrappedValue: firstContent.firstRun(), firstContent.name)
        self.firstContent = firstContent;
    }
}



extension View {
    

    var name:String {"\(Self.self)"}
    
    func firstRun() -> Bool {
        UserDefaults.standard.bool(forKey: self.name)
    }
    
    func firstRun(set value:Bool = false) {
        UserDefaults.standard.set(value, forKey: self.name)
    }

    @warn_unqualified_access
    func onFirstRun<firstContent:View>(@ViewBuilder content: () -> firstContent) -> some View {
        modifier(FirstRunView(firstContent: content()))
    }
    

    
}


