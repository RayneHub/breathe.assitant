//
//  NavigationTest.swift
//  Rayne Health
//
//  Created by Christopher Raven on 25/05/2023.
//

import SwiftUI


//let LightBlue:Color = Color(red: 0.97, green: 0.98, blue: 1.00)
//let LightBlue2:Color = Color(red: 0.89, green: 0.91, blue: 0.96)

let LightBlue:Color = Color(red: 0.89, green: 0.91, blue: 0.96)

let LightBlue2:Color = Color(red: 0.79, green: 0.81, blue: 0.86)
let LightBlueGrad:LinearGradient = LinearGradient(colors: [LightBlue2, LightBlue], startPoint: .bottom, endPoint: .top)

let MidBlue:Color=Color(red: 0.24, green: 0.55, blue: 1.00)

let DarkBlue:Color = Color(red: 0.02, green: 0.20, blue: 0.46)
let DarkBlue2:Color = Color(red: 0.18, green: 0.47, blue: 0.90)
let DarkBlueGrad:LinearGradient = LinearGradient(colors: [ DarkBlue,DarkBlue2], startPoint: .bottomTrailing, endPoint: .topLeading)



// MARK: - Application Root

struct ApplicationRoot_R: View
{
    @EnvironmentObject var navigator: Navigator
    @State private var isAnimated: Bool = false
    @State var searchText=""
    
    var body: some View
    {
        VStack( alignment: .leading, spacing:0)
        {
//            Navigation().frame(maxWidth:.infinity, maxHeight:160, alignment: .top)
//            Navigation_Bottom().frame(maxWidth:.infinity, maxHeight:120, alignment: .top).zIndex(3);
//            AnyView(navigator.page).zIndex(0).padding(.horizontal,20)
            
            Navigation_R().frame(maxWidth:.infinity, maxHeight:70, alignment: .top).padding(.bottom,50)
            Navigation_Bottom_Test().frame(maxWidth:.infinity, maxHeight:120, alignment: .top).zIndex(3);
            
            ScrollView(showsIndicators: false)
            {
                Rectangle().fill(.clear).frame(minHeight:75, maxHeight:75).padding(.all,0).padding(.top,-75)
                AnyView(navigator.page).zIndex(0).padding(.horizontal,20).padding(.top,20)
                //Spacer()
            }
            .scrollDisabled(Navigator.scrollDisabled)
        }
    }
}


struct ContentView_R: View
{
    var body: some View
    {
        ZStack(alignment: .leading)
        {
            //Image("T01").resizable().scaledToFit().opacity(0.3).ignoresSafeArea()
            VStack(spacing:0)
            {
                //DarkBlueGrad.frame(maxHeight:280) //220
                //LightBlueGrad
                DarkBlueGrad.frame(maxHeight:230) //280 : 210
                LightBlueGrad
            }
            .ignoresSafeArea()
            ApplicationRoot_R().environmentObject(Navigator.global)
        }
    }
}


// MARK: - PREVIEW

struct NavBar_Test: PreviewProvider
{
    static var previews: some View
    {
        ContentView_R().environmentObject(Navigator.global).previewDisplayName("App")
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
