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
