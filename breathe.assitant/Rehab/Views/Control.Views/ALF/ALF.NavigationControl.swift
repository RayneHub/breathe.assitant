//
//  ALF.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 23/06/2023.
//

import SwiftUI

// TODO: Change directional controle to direction enumm and not UINT

enum direction:String{
    case left
    case right
    case horizontal
    case up
    case down
    case vertical
    
    func toString() -> (String) {
        self.rawValue
    }
    
    var toSFString:String {
        "chevron."  + self.toString()
    }
}


extension ALF {
    
     struct NavigationDirection_Control: View{
        
        private let function: () -> Void
        private let direction:direction
        
        var body : some View {
            HStack(spacing: 0)
            {
                if(self.direction == .right){
                    Spacer()
                }
                
                Text("\(Image(systemName: direction.toSFString))").opacity(0.75)
                    .frame(maxWidth: 20, maxHeight:.infinity,  alignment: .center)
                    .background(.white.opacity(0.25))
                    
                if(self.direction == .left){
                    Spacer()
                }
            }
            .padding(.vertical,20)
            .onTapGesture{
                self.function()
            }
        }
        
        init(direction:direction = .left, function: @escaping () -> Void) {
            self.direction = direction
            self.function = function
        }
    }
    
    struct NavigationControl: View {
        
        @EnvironmentObject var navigator: NavigationRouter
        
        var title:String
        var about:String
        var color:Color = ALF.Purple
        
        var destination:navigationRoutes
        
        var hide:UInt = 0
        
        var body: some View{
            
            HStack(spacing: 0)
            {
                HStack(spacing: 0)
                {
                    VStack(alignment: .leading, spacing: 15)
                    {
                        Text(.init(title)).font(.title2)
                        Text(.init(about))
                    }
                    .frame(maxWidth:.infinity, alignment: .leading)
                    
                }
                .padding(.vertical,20)
                .padding(.horizontal,30)
                
                .overlay(hide == 0 || hide == 2 ? NavigationDirection_Control(function: { navigator.goBack() }) : nil)
                .overlay(hide == 0 || hide == 1 ? NavigationDirection_Control(direction: .right, function: { navigator.push(to: destination) }) : nil)
            }
            
            .background(color)
            
            .onTapGesture
            {
                if(hide != 0 && hide == 1)
                {
                    navigator.push(to: destination)
                }
                
                if(hide != 0 && hide == 2)
                {
                    navigator.goBack()
                }
            }
        }
        
        init(title: String, about: String, color: Color, navigatesTo destination: navigationRoutes, hide: UInt = 0) {
            
            self.title = title
            self.about = about
            self.color = color
            self.destination = destination
            self.hide = hide
        }
    }
    
    struct PageButtonControl : View {
        
        @EnvironmentObject var navigator: NavigationRouter
        
        var title:String
        var about:String
        var color:Color = ALF.Purple
        
        var body: some View{
            
            HStack(spacing: 0)
            {
                HStack(spacing: 0)
                {
                    VStack(alignment: .leading, spacing: 15)
                    {
                        Text(.init(title)).font(.title2)
                        Text(.init(about))
                    }
                    .frame(maxWidth:.infinity, alignment: .leading)
                    
                }
                .padding(.vertical,20)
                .padding(.horizontal,30)

            }
            .background(color)
            
//            .onTapGesture
//            {
//                if(hide != 0 && hide == 1)
//                {
//                    navigator.push(to: destination)
//                }
//
//                if(hide != 0 && hide == 2)
//                {
//                    navigator.goBack()
//                }
//            }
        }
        
    }
    
}


