//
//  KeepActiveProgramme Page 9 [CoolDown] : ALF.KeepActive.9.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

struct ALF_KAP_CoolDown: View {
    
    var body: some SwiftUI.View {

        ALF.ContentPage(
            bgColor: .blue.opacity(0.9),
            fgColor: .black.opacity(0.73),
            title: "Cool down and stretching",
            about: "Learn about some cool down exercises and stretches that you can do at home.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "8. Cool down and stretching",
                            about: "After any form of exercise, you should complete a cool down. Cool down exercises and stretches help you recover after exercise.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "nuFvHzPrPDY", runTime: 487).View  //8:07
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,10)
                            .padding(.bottom, 30)
                        
                        SectionControl(
                            title: "About this Video",
                            content:  "This video takes you through a series of stretches to cool down that gradually bring your breathing, heart rate and blood pressure back to their normal levels.\n\n" +
                            "These stretches will also help you to avoid any muscle soreness.\n\n" +
                            "Geoff, Yvonne, Mick, and Julie demonstrate the stretches, holding each one for 20 seconds.",
                            color: .gray.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        SectionControl(
                            title: "Note:",
                            content: "After exercising, it’s important to stretch and cool down! \n\n" +
                                    "Stretching will gradually bring your breathing, heart rate and blood pressure back to their normal\n\n" +
                                    "Stretching also helps you to avoid any muscle soreness and cramps." ,
                            color: .yellow.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
          
                 
                        ALF.NavigationControl(
                            title: "Next: Next steps",
                            about: "Learn how to keep up your exercise routine.",
                            color: .yellow.opacity(0.7), 
                            navigatesTo: .ALFKeepActive(index: 11)
                        )
                        .foregroundColor(.black.opacity(0.73)).padding(.top, 10)
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_CoolDown_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_CoolDown()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "CoolDown", titleDisplayMode:.inline)
    }
}
#endif




