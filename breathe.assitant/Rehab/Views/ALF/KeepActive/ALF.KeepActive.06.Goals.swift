//
//  KeepActiveProgramme Page 6 [Goals] : ALF.KeepActive.6.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI


struct ALF_KAP_Goals: View {
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .indigo.opacity(0.9),
            fgColor: .white.opacity(0.99),
            title: "Setting yourself goals",
            about: "Find out how to set yourself exercise goals to help track your progress.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "4. Setting yourself goals",
                            about: "This video explains how to set yourself exercise goals to help track your progress.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "QekAZ_df4FY", runTime: 137).View //2:17
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,00)
                            .padding(.bottom, 20)
                        
                        ALF.HeaderControl(
                            title: "Motivation:",
                            about: "A good way to motivate yourself to exercise and get the benefit of it is to think about what matters to you and how exercise can help you reach those goals.",
                            color: .gray.opacity(0.08)
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.NavigationControl(
                            title: "Next: Warming up",
                            about: "Find out how to warm up properly before you begin exercising.",
                            color: .orange.opacity(0.5), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 7)
                        )
                        .foregroundColor(.black.opacity(0.70))
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_Goals_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_Goals()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Goals", titleDisplayMode:.inline, navigationBarHidden: true)
    }
}
#endif




