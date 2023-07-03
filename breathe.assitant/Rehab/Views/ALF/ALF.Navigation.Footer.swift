//
//  ALF.Views.swift
//  Rayne Health
//
//  Created by Christopher Raven on 26/06/2023.
//


import SwiftUI


extension ALF {
    
    
    
    struct NavigationFooter : View {
        
        var body: some View{
            VStack(alignment:.leading, spacing: 0)
            {
                HStack(alignment: .top, spacing: 0)
                {
                    //Image("aluk.logo").resizable().frame(width: 100, height: 100).opacity(0.2)
                    Spacer()
                    VStack{
                        Spacer()
                        Text("Follow us").font(.system(size: 16).bold()).frame(maxWidth:.infinity, alignment: .trailing)
                        HStack(alignment: .top, spacing: 0)
                        {
                            Button {
                            } label:
                            {
                                Image("instagram.icon").resizable().frame(width:36, height: 34)
                            }.padding(.trailing,8)
                            
                            Button {
                            } label: {
                                Image("youtube.icon").resizable().scaledToFit().frame(width:36, height: 34)
                            }.padding(.trailing,8)
                            
                            
                            Button {
                            } label: {
                                Image("facebook.icon").resizable().frame(width:36, height: 34)
                            }.padding(.trailing,8)
                            
                            Button {
                                
                            } label: {
                                Image("twitter.icon").resizable().frame(width:36, height: 34)
                            }
                            
                        }.frame(maxWidth:.infinity,  alignment: .trailing)
                        
                        
                    }
                    .frame(maxWidth:.infinity, maxHeight: 100,  alignment: .topTrailing).foregroundColor(.white)
                }
                .padding(20)
                .frame(maxWidth:.infinity, maxHeight: 100,  alignment: .top)
                
                .background(
//                    LinearGradient(gradient: Gradient(colors: [Color(hex: 0x431499), Color(hex: 0x442da8), Color(hex: 0x453db3)]), startPoint: .top, endPoint: .bottom)
                    .gray
                ).scaledToFill().frame(maxWidth:.infinity, maxHeight: 140, alignment: .top).clipped()
            }
            .frame(maxWidth:.infinity, maxHeight: 110,  alignment: .top)
        }
    }
}


