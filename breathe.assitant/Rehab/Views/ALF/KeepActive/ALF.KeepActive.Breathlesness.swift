//
//  KeepActiveProgramme Page 5 [Breathlessness] : ALF.KeepActive.5.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

struct ALF_KAP_Breathlesness: View {
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor:  Color(hex: 0x808c9e).opacity(0.9),
            fgColor: .white.opacity(0.99),
            title: "Managing breathlessness",
            about: "It’s normal to get out of breath when you exercise. Find out how to manage breathlessness when you exercise.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "3. Managing breathlessness",
                            about: "This video shows you ways to take control of your breathlesness when you exercise.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "c4RljKVVLgg", runTime: 487).View  //8:07
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,10)
                            .padding(.bottom, 30)
                        

                        SectionControl(
                            title: "Video Contents",
                            content: "Examples of breathing control.\n\n" +
                            "Helpful positions that you can try to ease your breathlessness.\n\n" +
                            "*The following breathing techniques:*\n\n" + "Pursed lip breathing.\n\nRelaxed deep breathing.\n\nBlow as you go.\n\nPaced breathing.",
                            
                            color: Color(hex: 0x808c9e).opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                   
                        
                        ALF.PageNavigationLinkControl(
                            title: "Next: Setting yourself goals",
                            about: "Find out how to set yourself exercise goals to help track your progress.",
                            color: .indigo.opacity(0.9), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 6)
                        )
                        .foregroundColor(.white.opacity(0.99)).padding(.top, 10)
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_Breathlessness_Previews: PreviewProvider {
    static var previews: some View
    {
        
        ALF_KAP_Breathlesness()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Breathless", titleDisplayMode:.inline)
            
    }
}
#endif




