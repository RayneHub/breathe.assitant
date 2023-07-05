//
//  KeepActiveProgramme Page 7 [WarmUp] : ALF.KeepActive.7.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI


struct ALF_KAP_WarmUp: View {
    
    var body: some SwiftUI.View {
      
        ALF.ContentPage(
            bgColor: .orange.opacity(0.5),
            fgColor: .black.opacity(0.73),
            title: "Warming up",
            about: "Find out how to warm up properly before you begin exercising. ",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "5. Warming up",
                            about: "Before doing any exercise, always remember to warm up first. This is important to get you ready for exercise and prevent injury.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "-Ow0bZMXQHk", runTime: 475).View //475 , //7:55
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,10)
                            .padding(.bottom, 30)
                        
                       
                       
                        SectionControl(
                            title: "About this Video",
                            content:  "Geoff, Yvonne, and Mick do 11 exercises to warm up at their own pace\n\n" +
                                    "Julie demonstrates how to warm up before you exercise so that you gently prepare your joints, muscles, and heart.\n\n" +
                                    "Julie explains the 3 levels of warm up exercise and why it’s important that you pick the level that’s right for you.",
                            color: .gray.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                            
                        SectionControl(
                            title: "Level 1",
                            content: "For people who get short of breath during activities like showering, dressing and moving around their home.",
                            color: .yellow.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        SectionControl(
                            title: "Level 2",
                            content: "For people who get out of breath doing things like carrying light food shopping, mowing the lawn, and hoovering.",
                            color: .red.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        SectionControl(
                            title: "Level 3",
                            content: "For people who feel short of breath after doing high energy activities like walking up hills and carrying heavy food shopping.",
                            color: .blue.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        

                        ALF.NavigationControl(
                            title: "Next: Strength exercises",
                            about: "Learn about some strengthening exercises that you can do at home.",
                            color: .black.opacity(0.7), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 8)
                        )
                        .foregroundColor(.white.opacity(0.99)).padding(.top, 10)
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_ExWarmup_Previews: PreviewProvider {
    static var previews: some View
    {
        
        ALF_KAP_WarmUp()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Levels", titleDisplayMode:.inline)
            
    }
}
#endif




