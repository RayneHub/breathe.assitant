//
//  ALF.ContentPage.swift
//  Rayne Health
//
//  Created by Christopher Raven on 01/07/2023.


import SwiftUI

extension ALF{
    
    struct ContentPage<Content:View>: View {
        
        var bgColor:Color = .blue.opacity(0.7)
        var fgColor:Color = .black.opacity(0.7)
        
        var title:String
        var about:String
        
        var hide:UInt = 0
        
        @ViewBuilder var content:Content
        
        // MARK: Generates the Section View's Body from the sectionElements Array
        
        var body: some SwiftUI.View {
            VStack(alignment:.leading, spacing: 0)
            {
                ScrollView
                {
                    VStack(spacing: 0)
                    {
                        ALF.PageNavigationLinkControl(
                            title: title,
                            about: about,
                            color: bgColor,
                            navigatesTo: .ALFKeepActive(index: 0),
                            hide:hide
                        ).foregroundColor(fgColor)
                        
                        content
                        ALF.NavigationFooter()
                    }
                }
                .scrollIndicators(.never)
                
            }
        }
    }
    
}


