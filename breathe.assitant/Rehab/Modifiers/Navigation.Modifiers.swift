//
//  NavigationPreviewer.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

fileprivate struct RouterHost : ViewModifier {
    
    var Title:String = "Rayne:Health"
    var TitleDisplayMode:NavigationBarItem.TitleDisplayMode = .inline
    
    var color:Color = .pink
    var navigationBarHidden:Bool = false;
    
    @StateObject var routerManager = NavigationRouter()
    
    func body(content: Content) -> some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            ALF.NavigationHeader()
            
            NavigationStack(path: $routerManager.navigationPath)
            {
                content
                    .navigationTitle(Title)
                    .navigationBarTitleDisplayMode(TitleDisplayMode)
                    .navigationBarHidden(navigationBarHidden)
                    .navigationDestination(for: navigationRoutes.self){ $0 }
            }
            .navigationTitle("Navigation Title")
                        .toolbarBackground(
                            Color.pink,
                            for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
        }
        .environmentObject(routerManager)
        
    }
}


// MARK: Extensions for modier are in the same file as we marked it as fileprivate
extension View
{
    // MARK: Wraps content in a NaviagtionStack using the routerManager. Defaults to hiding the navigationBar
    
    @warn_unqualified_access
    func navigationHost(with title: String, titleDisplayMode :NavigationBarItem.TitleDisplayMode = .inline, navigationBarHidden:Bool = true) -> some View
    {
        modifier(RouterHost(Title: title, TitleDisplayMode: titleDisplayMode, navigationBarHidden: navigationBarHidden)) 
    }
    
    // MARK: For Previewing Files inside the NaviagtionStack using the routerManager. Preview Modifier defaults to show navigation bar
    
    @warn_unqualified_access
    func routerPreview(navigationTitle title: String, previewName:String = "", titleDisplayMode :NavigationBarItem.TitleDisplayMode = .inline, navigationBarHidden:Bool = false) -> some View
    {
        
        //let _ = print(self)
        return modifier(RouterHost(Title: title, TitleDisplayMode: titleDisplayMode, navigationBarHidden: navigationBarHidden))
            .previewDisplayName(previewName)
    }
}


