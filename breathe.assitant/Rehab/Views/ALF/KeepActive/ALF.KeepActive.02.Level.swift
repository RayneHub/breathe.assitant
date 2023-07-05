//
//  KeepActiveProgramme Page 2 [Level] : ALF.KeepActive.2.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI
import WebKit


struct ALF_KAP_Level: View {
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .indigo.opacity(0.9),
            fgColor: .white,
            title: "Exercise levels",
            about: "This programme is designed for people living with a  lung condition, and includes exercises at three levels. ",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "Choosing your level",
                            about: "When you take part in this programme, it’s important that you pick the level that’s right for you.\n\nThis may change as you practice and progress through this programme.\n\nThe key thing is not to overdo it and to build up your strength and resilience slowly.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.HeaderControl(
                            title: "Note:",
                            about: "If you are unsure of what level to begin at, you can always discuss this with your healthcare provider before you begin.",
                            color: .gray.opacity(0.1)
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.HeaderControl(
                            title: "Levels",
                            about: "This Exercise programme uses the three levels below throughout. Read them and choose the most appropriate based on how your condition affects you.\n\nYou can always go up or down a level if your symptoms change.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        SectionControl(
                            title: "Level 1",
                            content: "For people who get short of breath during activities like showering, dressing and moving around their home.",
                            color: .yellow.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        SectionControl(
                            title: "Level 2",
                            content: "For people who get out of breath doing things like carrying light food shopping, mowing the lawn, and hoovering.",
                            color: .red.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        SectionControl(
                            title: "Level 3",
                            content: "For people who feel short of breath after doing high energy activities like walking up hills and carrying heavy food shopping.",
                            color: .blue.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                            .padding(.top, 10)
                        
                        ALF.HeaderControl(
                            title: "Changing levels:",
                            about: "You may find that certain conditions (such as extreme heat) affect how much you can do and should adjust your level accordingly",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.NavigationControl(
                            title: "Next: Programme overview",
                            about: "Get an overview of the keep active exercise programme.",
                            color: .blue.opacity(0.9), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 3)
                        )
                        .foregroundColor(.white.opacity(0.99)).padding(.top, 10)
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_ExLevels_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_Level()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Levels", titleDisplayMode:.inline)
    }
}
#endif




