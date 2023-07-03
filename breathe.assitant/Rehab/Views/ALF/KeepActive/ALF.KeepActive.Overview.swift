//
//  KeepActiveProgramme Page 3 [OverView] : ALF.KeepActive.3.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

struct ALF_KAP_Overview: View {
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .blue,
            fgColor: .white.opacity(0.99),
            title: "Programme overview",
            about: "This is an overview of the keep active exercise programme.",
            hide: 2,
            content:
                {

                    VStack(spacing: 0){
                       
                        ALF.HeaderControl(
                            title: "1. Introduction",
                            about: "This video provides you with an overview of the Keep Active Programme and how regular activity has helped Cathy.",
                            color: .white.opacity(0.1)
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "OxR8kmlZU28", runTime: 466).View
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,00)
                            .padding(.bottom, 20)
                        
                        SectionControl(
                            title: "Video Contents:",
                            content: "How being active in your own home can help you.\n\n" +
                            "How to find the right level of activity for you before you start.\n\n" +
                            "Using these exercises after pulmonary rehabilitation.\n\n" +
                            "Current recommendations on how active we should be.\n\n" +
                            "An overview of the other parts of this exercise programme.",
                            color: .purple.opacity(0.3)

                        )
                        .foregroundColor(.black.opacity(0.7))
                        .padding(.horizontal, 30)
                        .padding(.vertical, 20)
                        .padding(.bottom, 20)
                           
                        
                        ALF.PageNavigationLinkControl(
                            title: "Next: Exercising safely",
                            about: "Find out how to exercise safely whilst taking part in this programme",
                            color: .green.opacity(0.15),
                            navigatesTo: .ALFKeepActive(index: 4)
                        )
                        .foregroundColor(.black.opacity(0.7))
                        
                    }
                    .background(.white)
            
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_Overview_Previews: PreviewProvider {
    static var previews: some View
    {
        
        ALF_KAP_Overview()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Overview", titleDisplayMode:.inline)
            
    }
}
#endif




