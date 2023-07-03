//
//  KeepActiveProgramme Page 4 [Safety] : ALF.KeepActive.4.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

struct ALF_KAP_Safety: View {
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .green.opacity(0.15),
            fgColor: .black.opacity(0.73),
            title: "Exercise safely",
            about: "From warming up correctly and what clothes to wear, to keeping your inhaler close and exercising at your level, this video shares how to exercise safely.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "2. How to exercise safely",
                            about: "This video provides you with an overview of the Keep Active Programme and how regular activity has helped Cathy.",
                            color: .white.opacity(0.1)
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "JDWlcvLGw_A", runTime: 129).View //129, //2:09
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,00)
                            .padding(.bottom, 20)
                        
                        SectionControl(
                            title: "Exercising safely",
                            content: "Start slowly and gradually build up your strength and resilience.\n\nWarm up before and cool down after exercising.\n\n" +
                            "Carry any reliever, inhaler or GTN spray that you normally use and use it as required when excercising.\n\n" +
                            "Wear loose, comfortable clothing and supportive non-slip shoes, like trainers. \n\n" +
                            "Drink plenty of water and wait for at least an hour after eating before you exercise.\n\n" +
                            "Use oxygen (if you normally have it) at your regular setting when exercising.\n\nBe active at a level that’s right for you.",
                            
                            color: .purple.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.vertical, 20)
                          
            
                        SectionControl(
                            title: "STOP exercising when",
                            content: "You get any sudden chest pain or tightness.\n\nYou suddenly start feeling dizzy, nauseous, clammy, or cold.\n\nYou are feeling increasingly wheezy.\n\nYou get sudden sore joints or muscle weakness.",
                            color: .red.opacity(0.4)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.vertical, 20)
                            .padding(.bottom, 20)
                        
                        ALF.HeaderControl(
                            title: "Reminder:",
                            about: "Talk to your healthcare professional if exercise makes your chest feel tight or wheezy.\n\nYou may find it beneficial to take a reliever inhaler 5-20 minutes before your exercise session, but you should discuss this with your healthcare professional first.",
                            color: .gray.opacity(0.08)
                            
                        ).foregroundColor(.black.opacity(0.7))
                           
  
                        ALF.PageNavigationLinkControl(
                            title: "Next: Managing breathlessness",
                            about: "Find out how to manage breathlessness when you exercise.",
                            color: Color(hex: 0x808c9e).opacity(0.8), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 5)
                        )
                        .foregroundColor(.white.opacity(0.99))
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_Safety_Previews: PreviewProvider {
    static var previews: some View
    {
        
        ALF_KAP_Safety()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Safety", titleDisplayMode:.inline)
            
    }
}
#endif




