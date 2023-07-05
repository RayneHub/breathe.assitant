//
//  KeepActiveProgramme Page 1 [Begin] : ALF.KeepActive.1.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.


import SwiftUI

struct ALF_KAP_Begin: View {
    
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .yellow.opacity(0.7),
            fgColor: .black.opacity(0.73),
            title: "Before you start",
            about: "This section explores what you need to do before you start this exercise programme and gives some essential pointers.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "Before you start any exercise",
                            about: "Before you start any exercise, check with your GP, Consultant, healthcare provider or respiratory team, that it’s safe for you to do so.\n\nYou can also discuss with them the level of exercise that’s right for you.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        SectionControl(
                            title: "When to stop exercising",
                            content: "If you get any sudden chest pain or tightness.\n\nIf you suddenly start feeling dizzy, nauseous, clammy, or cold.\n\nIf you are feeling increasingly wheezy.\n\nIf you get sudden sore joints or muscle weakness.",
                            color: .red.opacity(0.2)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        SectionControl(
                            title: "When to seek advice",
                            content: "If you get any sudden chest pain or tightness.\n\nIf you suddenly start feeling dizzy, nauseous, clammy, or cold.\n\nIf you are feeling increasingly wheezy.\n\nIf you get sudden sore joints or muscle weakness.",
                            color: .orange.opacity(0.2)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 10)
                        
                        ALF.HeaderControl(
                            title: "Note:",
                            about: "Talk to your healthcare professional if exercise makes your chest feel tight or wheezy.\n\nYou may find it beneficial to take a reliever inhaler 5-20 minutes before your exercise session, but you should discuss this with your healthcare professional first.",
                            color: .clear //.blue.opacity(0.08)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.bottom, 10)
                        
                        ALF.NavigationControl(
                            title: "Next: Exercise levels",
                            about: "Find out how to choose the right level to exercise and and why.",
                            color: .blue.opacity(0.9), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 2)
                        )
                        .foregroundColor(.white.opacity(0.99))
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_Begin_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_Begin()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Keep Active Root", titleDisplayMode:.inline, navigationBarHidden: true)
    }
}
#endif



