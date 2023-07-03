//
//  Navigation.Bottom.swift
//  Rayne Health
//
//  Created by Christopher Raven on 05/06/2023.
//

import SwiftUI

let MidBlueLight:Color = Color(red: 0.40, green: 0.67, blue: 1.00)
let MidBlueLight2:Color = Color(red: 0.11, green: 0.41, blue: 0.78)

struct Navigation_Bottom_Test: View {
    var body: some View {
        ScrollView(.horizontal)
        {
            HStack(alignment: .top, spacing: 20)
            {
                // MARK: NavigationScrollItemView
                
                HStack(spacing:0)
                {
                    Rectangle().fill(MidBlueLight).frame(maxWidth:8, maxHeight:.infinity).padding(0)
                    Rectangle().fill(MidBlueLight2).frame(maxWidth:.infinity, maxHeight:.infinity).padding(0)//.opacity(0.6)
                        .overlay(alignment:.topLeading)
                        {
                            VStack(alignment: .leading, spacing:0)
                            {
                                Text("ElementTitle").padding(.bottom,10)
                                Text("Subtile").font(.footnote).padding(.bottom,10)
                                
                                HStack(alignment: .bottom)
                                {
                                    Circle().fill(.green.opacity(0.8))
                                    Circle().fill(.green.opacity(0.8))
                                    Circle().fill(.green.opacity(0.8))
                                    Spacer()
                                    Circle().fill(.green.opacity(0.8))
                                   
                                }
                                .padding(.bottom,15)
                            }
                            .padding(.top,20)
                            .padding(.horizontal,20)
                        }
                }
                .frame(idealWidth:275, maxWidth:.infinity, maxHeight:.infinity).cornerRadius(5)
                
                HStack(spacing:0)
                {
                    Rectangle().fill(MidBlueLight).frame(maxWidth:8, maxHeight:.infinity).padding(0)
                    Rectangle().fill(DarkBlue2).frame(maxWidth:.infinity, maxHeight:.infinity).padding(0)//.opacity(0.6)
                        .overlay(alignment:.topLeading)
                        {
                            VStack(alignment: .leading, spacing:0)
                            {
                                Text("ElementTitle").padding(.bottom,10)
                                Text("Subtile").font(.footnote).padding(.bottom,10)
                                
                                HStack(alignment: .bottom)
                                {
                                    Circle().fill(.green.opacity(0.8))
                                    Circle().fill(.orange.opacity(0.8))
                                    Circle().fill(.red.opacity(0.8))
                                    Spacer()
                                    Circle().fill(.orange.opacity(0.8))
                                    
                                   
                                }
                                .padding(.bottom,15)
                            }
                            .padding(.top,20)
                            .padding(.horizontal,20)
                        }
                }
                .frame(idealWidth:275, maxWidth:.infinity, maxHeight:.infinity).cornerRadius(5)
                
                HStack(spacing:0)
                {
                    Rectangle().fill(MidBlueLight).frame(maxWidth:8, maxHeight:.infinity).padding(0)
                    Rectangle().fill(.blue).frame(maxWidth:.infinity, maxHeight:.infinity).padding(0)//.opacity(0.6)
                        .overlay(alignment:.topLeading)
                        {
                            VStack(alignment: .leading, spacing:0)
                            {
                                Text("ElementTitle").padding(.bottom,10)
                                Text("Subtile").font(.footnote).padding(.bottom,10)
                                
                                HStack(alignment: .bottom)
                                {
                                    Circle().fill(.green.opacity(0.8))
                                    Circle().fill(.green.opacity(0.8))
                                    Circle().fill(.gray.opacity(0.8))
                                    Spacer()
                                    Circle().fill(.gray.opacity(0.8))
                                }
                                .padding(.bottom,15)
                            }
                            .padding(.top,20)
                            .padding(.horizontal,20)
                        }
                }
                .frame(idealWidth:275, maxWidth:.infinity, maxHeight:.infinity).cornerRadius(5)
            }
            .padding(.horizontal,20)
        }
        .scrollIndicators(.hidden)
    }
        
}


struct Navigation_Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_Bottom_Test().frame(maxHeight:140)
    }
}
