//
//  NavigationBar.swift
//  Rayne Health
//
//  Created by Christopher Raven on 25/05/2023.
//

import SwiftUI

// MARK: - Custom Navigation Bar (Persistent)

protocol NavigationBarViewer: View
{
    var title: String? { get set }
    mutating func updateTitle(_ title: String)
}

extension View where Self: NavigationBarViewer
{
    func subTitle(_ title: String) -> some View {
        //var newView = self
        //newView.updateTitle( title)
        return self
    }
}


struct NavigationBar_R:View
{
    var body : some View
    {
        HStack(spacing: 0)
        {
            Circle().frame(maxHeight:40).foregroundColor(.pink.opacity(0.3))
                .overlay
            {
                VStack
                {
                    Rectangle().frame(maxWidth: 20, maxHeight:4)
                    Spacer()
                    Rectangle().frame(maxWidth: 25, maxHeight:3)
                    Spacer()
                    Rectangle().frame(maxWidth: 20, maxHeight:4)
                }
                
                .padding(.vertical, 10)
            }
            Spacer()
            VStack(spacing: 0)
            {
                Text("Welcome").font(.callout).fontWeight(.medium)
                Text(Navigator.subtitle.uppercased())
                    .font(.caption2).opacity(0.7)
                    .padding(.all, 0)
                    .padding(.top,0)
            }
            .onTapGesture
            {
                Navigator.animationTimer=0
                Navigator.subtitle="pulminary rehabilitation"
                Navigator.global.navigate(RootPage_R());
            }
            Spacer()
            Circle().frame(maxHeight:40).foregroundColor(.pink.opacity(0.3))
                .overlay
            {
                VStack
                {
                    Rectangle().frame(maxWidth: 18, maxHeight:4)
                    Spacer()
                    Rectangle().frame(maxWidth: 24, maxHeight:3)
                    Spacer()
                    Rectangle().frame(maxWidth: 18, maxHeight:4)
                }
                .padding(.vertical, 10)
            }
        }
        .foregroundColor(.white)
        .padding(.top, 0)
    }
}



struct Navigation_R: View
{
    @EnvironmentObject var navigator: Navigator
    var DualNav:Bool=true;
    
    var body: some View
    {
        VStack(alignment: .leading, spacing: 0)
        {
            // MARK: TITLE & SUBTITLE GROUP
            //NavigationBar().frame(maxHeight: 90, alignment: .top).padding(.horizontal,25).padding(.vertical,0)
            Color(.clear).frame(maxHeight: 90, alignment: .top).padding(.horizontal,25).padding(.vertical,0)
            //Divider()
            
            if(DualNav)
            {
                SubNavBar().frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,25)
                    .padding(.vertical,0)
                .foregroundColor(.white)
            }
        }
    }
}



struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_R().padding(.vertical,15).padding(.horizontal,15)
            .background( DarkBlueGrad.opacity(0.9))
    }
}
