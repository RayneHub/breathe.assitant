//
//  First Run Modifier.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

private struct FirstRunView<FirstContent:View>: ViewModifier{
    
    @AppStorage var showContent: Bool
    @ViewBuilder var firstContent:FirstContent
    
    func body(content: Content) -> some View {
        
        if(showContent) {
            content
        }
        else {
            firstContent
        }
    }
    
    init(firstContent:FirstContent) {
        self._showContent = AppStorage(wrappedValue: firstContent.firstRun(), firstContent.name)
        self.firstContent = firstContent;
    }
}

extension View {

    var name:String {"\(Self.self)"}
    
    func firstRun() -> Bool {
        UserDefaults.standard.bool(forKey: self.name)
    }
    
    func firstRun(disable value:Bool = true) {
        UserDefaults.standard.set(value, forKey: self.name)
    }

    // TODO: Change to Protocoal for AlternativeView and enforce a binding to dismissView

    /// Shows an Alternative View until that view calls the action: self.firstRun(set:false)
    ///
    /// You must add the following action to a child item in the AlternativeView  to clear the Alternite view : self.firstRun(set:false}
    ///
    /// Note once the firstRun View has called has called self.firstRun(set:false) you will not see it again!
    ///
    /// - Parameter content: content of the view to be shown on first run
    /// - Returns: content or the view that has this modifier attached

    @warn_unqualified_access
    func onFirstRun<firstContent:View>(@ViewBuilder content: () -> firstContent) -> some View {
        modifier(FirstRunView(firstContent: content()))
    }
}

