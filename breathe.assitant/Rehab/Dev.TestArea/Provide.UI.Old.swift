//
//  Provide.UI.swift
//  Rayne Health
//
//  Created by Christopher Raven on 23/05/2023.
//

import SwiftUI

struct NavBar_ScreenBackgroundColor_R: View
{
    let gradient = LinearGradient(colors: [Color.purple.opacity(0.4),Color.orange.opacity(0.2)], startPoint: .top, endPoint: .bottom)
    
    var body: some View
    {
        NavigationStack
        {
            ZStack
            {
                Color.gray.opacity(0.1).ignoresSafeArea()
                //gradient.opacity(0.1).ignoresSafeArea()
                            
                .toolbar
                {
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        HStack
                        {
                            NavigationLink("Warm Up", destination:  ApplicationRoot_R().environmentObject(Navigator.global));
                        }
                    }
                    
                    ToolbarItem(placement: .principal)
                    {
                        Image("provide.logo")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.purple)
                            .frame(maxWidth: 65,  maxHeight:24, alignment:.top)
                            .padding(.vertical, -18)
                    }
                    
                    ToolbarItem(placement:.navigationBarTrailing)
                    {
                        Text("Back")
                    }
                }
                
                
                NavigationStack
                {
                  Divider()
                 NavigationLink("Warm Up", destination: Excercise_R(Title: "Walking",  Time: 5, Guide: "Warm up advice. "));
                                   Text("Background colors can be seen behind the NavigationStack").padding()
                                   Spacer()
                 }
            }
            .navigationBarTitleDisplayMode(.inline)
        
        
        }
    }
    
}


struct Provide_UI_R: View {
    var body: some View {
        NavBar_ScreenBackgroundColor_R()
    }
}

struct Provide_UI_Previews: PreviewProvider {
    static var previews: some View {
        Provide_UI_R()
    }
}
