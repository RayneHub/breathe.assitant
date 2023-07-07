//
//  ALF.Views.swift
//  Rayne Health
//
//  Created by Christopher Raven on 26/06/2023.
//


import SwiftUI


extension ALF {
    
    struct NavigationHeader : View {
        
        var body: some View{
            VStack(alignment:.leading, spacing: 0)
            {
                HStack(alignment: .top, spacing: 0)
                {
                    Image("aluk.logo").resizable().frame(width: 100, height: 100)
                    Spacer()
                    VStack{
                        HStack(alignment: .top, spacing: 0)
                        {
                            Button("Donate")
                            {
                                UserDefaults.standard.set(0, forKey: "ALF.Begin")
                                UserDefaults.standard.set(0, forKey: "ALF.Level")
                                UserDefaults.standard.set(false, forKey: "Guide")
                            }.tint(.yellow).buttonStyle(.borderedProminent).padding(.trailing,12)
                            
                            Button {
                                 
                                
                              
                            } label: {
                                Image(systemName: "magnifyingglass.circle.fill").resizable().frame(width:36, height: 34)
                            }.padding(.trailing,12).tint(.yellow)
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "filemenu.and.cursorarrow").resizable().frame(width:36, height: 34)
                            }
                            
                        }.frame(maxWidth:.infinity,  alignment: .trailing)
                        Spacer()
                        Text("Helpline : [0300 222 5800](tel:03002225800)").font(.system(size: 16).bold()).frame(maxWidth:.infinity, alignment: .trailing)
                    }
                    .frame(maxWidth:.infinity, maxHeight: 140,  alignment: .topTrailing).foregroundColor(.white)
                }
                .padding(20)
                .frame(maxWidth:.infinity, maxHeight: 140,  alignment: .top)
                
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(hex: 0x431499), Color(hex: 0x442da8), Color(hex: 0x453db3)]), startPoint: .top, endPoint: .bottom)
                ).scaledToFill().frame(maxWidth:.infinity, maxHeight: 140, alignment: .top).clipped()
            }
            .frame(maxWidth:.infinity, maxHeight: 140,  alignment: .top)
        }
    }
    
}


