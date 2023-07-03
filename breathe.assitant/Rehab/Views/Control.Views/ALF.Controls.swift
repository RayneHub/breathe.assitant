//
//  ALF.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 23/06/2023.
//

import SwiftUI


struct ALF {
    
    // MARK: Static Colours
    
    static let Purple:Color = Color(red: 0.264, green: 0.074, blue: 0.6)
    static let Background:Color = Color(red: 0.948, green: 0.932, blue: 0.908)
    
    // MARK: Resuable ALF Header Control
    
    struct HeaderControl: View {
        var title:String
        var about:String
        var color:Color=ALF.Purple
        
        var body: some SwiftUI.View{
            VStack(alignment: .leading, spacing: 15)
            {
                Text(.init(title)).font(.title2)
                Text(.init(about))
            }
            .padding(.vertical,20)
            .padding(.horizontal,30)
            .frame(maxWidth:.infinity, alignment: .leading)
            .background(color)
        }
    }
    
    
//    struct HeaderNavControl: View {
//
//        @EnvironmentObject var navigator: NavigationRouter
//
//        var title:String
//        var about:String
//        var color:Color=ALF.Purple
//
//        var destination:Route
//        var hide:UInt = 0
//
//        var body: some SwiftUI.View{
//
//            HStack(spacing: 10)
//            {
//                if(hide == 0 || hide == 2)
//                {
//                    Image(systemName: "chevron.left")
//                        .frame(maxWidth: 30, maxHeight:.infinity, alignment: .center).onTapGesture {
//                            navigator.goBack()
//                        }
//                }
//                else
//                {
//                    Spacer(minLength: 20)
//                }
//
//                VStack(alignment: .leading, spacing: 15)
//                {
//                    Text(.init(title)).font(.title2)
//                    Text(.init(about))
//                }
//                .frame(maxWidth:.infinity, alignment: .leading)
//
//
//                if(hide == 0 || hide == 1)
//                {
//                    Image(systemName:  "chevron.right")
//                        .frame(maxWidth: 30, maxHeight:.infinity, alignment: .center).padding(.trailing,10)
//                        .onTapGesture {
//                            navigator.push(to: destination)
//                        }
//                }
//                else{
//                    Spacer(minLength: 20)
//                }
//            }
//            .padding(.vertical,20)
//            .background(color)
//
//        }
//    }
    
    
    struct PageNavigationLinkControl: View {
        
        @EnvironmentObject var navigator: NavigationRouter
        
        var rightButton: some View {
            HStack(spacing: 0)
            {
                Spacer()
                Text("\(Image(systemName: "chevron.right"))")
                    .frame(maxWidth: 20, maxHeight:.infinity,  alignment: .center)
                    .background(.white.opacity(0.20))
            }
            .padding(.vertical,20)
            .onTapGesture{
                navigator.push(to: destination)
            }
        }
        
        var leftButton: some View {
            HStack(spacing: 0)
            {
                Text("\(Image(systemName: "chevron.left"))")
                    .frame(maxWidth: 20, maxHeight:.infinity,  alignment: .center)
                    .background(.white.opacity(0.20))
                Spacer()
            }
            .padding(.vertical,20)
            .onTapGesture{
                navigator.goBack()
            }
        }
        
        var title:String
        var about:String
        var color:Color = ALF.Purple
        
        var destination:navigationManager
        var hide:UInt = 0
        
        
        var body: some SwiftUI.View{
            
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
                
                .overlay(hide == 0 || hide == 2 ? leftButton : nil)
                .overlay(hide == 0 || hide == 1 ? rightButton : nil)
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
        
        init(title: String, about: String, color: Color, navigatesTo destination: navigationManager, hide: UInt = 0) {
           
            self.title = title
            self.about = about
            self.color = color
            self.destination = destination
            self.hide = hide
        }
    }
    
    
    // MARK: Resuable Video Control
    
    //    struct VideoControl: View {
    //
    //        //var page:ALF.Page
    //        var video:ALF.Video? { page.video }
    //
    //        var body: some SwiftUI.View{
    //            if (video != nil){
    //                video!.View
    //                    .frame(height: 200)
    //                    .cornerRadius(4)
    //                    .padding(.bottom,5)
    //
    //                Text(video!.timeString)
    //                    .font(.footnote)
    //                    .frame(maxWidth:.infinity, maxHeight: 30,  alignment: .trailing)
    //                    .padding(.bottom,15)
    //
    //            }
    //        }
    //    }
    
    // MARK: Resuable ALF Section Control - Builds The Sections from ALF Page Data
    
    struct SectionControl: View {
        
        var color:Color
        var title:String
        
        var sectionElements:[String]=[]
        
        // MARK: Generates the Section View's Body from the sectionElements Array
        
        var body: some SwiftUI.View {
            
            VStack(alignment: .leading, spacing: 20)
            {
                Text(title)
                    .font(.title3)
                    .padding(.horizontal, 20)
                    .padding(.vertical,10)
                    .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .leading)
                    .background(color)
                
                // MARK: Get our ViewBuilder to Build the section contetns
                ForEach(self.sectionElements.indices, id: \.self)
                {
                    idx in
                    Text(self.sectionElements[idx])
                        .padding(.horizontal, 20)
                        .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .leading)
                }
                
            }
            .padding(.bottom,20)
            .background(color.opacity(0.3))
            .cornerRadius(4)
        }
        
    }
    
    // MARK: Resuable ALF Section Control - Builds The Sections from ALF Page Data
    
    struct SectionControl_Bordered: View {
        
        var color:Color
        var title:String
        
        var sectionElements:[String]=[]
        
        // MARK: Generates the Section View's Body from the sectionElements Array
        
        var body: some SwiftUI.View {
            
            VStack(alignment: .leading, spacing: 20)
            {
                Text(title)
                    .font(.title3)
                    .padding(.horizontal, 20)
                    .padding(.vertical,10)
                    .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .leading)
                    .background(color)
                
                // MARK: Get our ViewBuilder to Build the section contetns
                ForEach(self.sectionElements.indices, id: \.self)
                {
                    idx in
                    Text(self.sectionElements[idx])
                        .padding(.horizontal, 20)
                        .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .leading)
                }
                
            }
            .padding(.bottom,20)
            .background(color.opacity(0.3))
            .cornerRadius(4)
        }
        
    }
    
}



struct NBadge: View {
    let count: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.clear
            Text(String(count))
                .font(.system(size: 16))
                .padding(5)
                .background(Color.red)
                .clipShape(Circle())
            
            // custom positioning in the top-right corner
                .alignmentGuide(.top) { $0[.bottom] }
                .alignmentGuide(.trailing) { $0[.trailing] - $0.width * 0.25 }
        }
    }
}
