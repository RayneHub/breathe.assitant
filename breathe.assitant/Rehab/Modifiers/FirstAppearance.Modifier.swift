//
//  NavigationPreviewer.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

private struct FirstAppear: ViewModifier {
    let action: () -> ()
    
    @State private var hasAppeared = false
    
    func body(content: Content) -> some View {
        
        content.onAppear {
            guard !hasAppeared else {
                return
            }
            hasAppeared = true
            action()
        }
    }
}

extension View {
    @warn_unqualified_access
    func onFirstAppearance(_ action: @escaping () -> ()) -> some View {
        modifier(FirstAppear(action: action))
    }
}



