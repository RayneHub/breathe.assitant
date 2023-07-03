//
//  KeepActiveProgramme Page 8 [Strength] : ALF.KeepActive.8.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

//title:"Strength exercises",
//about:"Strengthening (resistance) exercises help you develop stronger muscles. In this video, we show you some strengthening exercises you can do at home.",
//videoId: "ThqXqDL6YqI",
//seconds:  2007 , //33:27
//content:[
//    [
//        "Geoff, Yvonne, and Mick do exercises to strengthen their muscles. Julie reminds them to use breathing techniques.",
//        "They repeat each exercise 10 times – that’s one set. Depending on their fitness level, they do 1, 2 or 3 sets. Some of the exercises use weights or resistance bands.",
//    ]],
//sectionTitle: ["About this Video"]

struct ALF_KAP_Strength: View {
    
    var body: some SwiftUI.View {
  
        ALF.ContentPage(
            bgColor:  .black.opacity(0.7),
            fgColor: .white.opacity(0.99),
            title: "Strength exercises",
            about: "Learn about some strengthening exercises that you can do at home.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "6. Strength exercises",
                            about: "Strengthening (resistance) exercises help you develop stronger muscles. \n\nIn this video, we show you some strengthening exercises you can do at home.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "ThqXqDL6YqI", runTime: 487).View  //8:07
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
                            
    
                        ALF.PageNavigationLinkControl(
                            title: "Next: Aerobic exercises",
                            about: "Learn about some aerobic exercises to work your heart and lungs that you can do at home.",
                            color: .purple.opacity(0.5), //Color(hex: 0x808c9e),
                            navigatesTo: .ALFKeepActive(index: 9)

                        )
                        .foregroundColor(.black.opacity(0.7)).padding(.top, 10)
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_ExStrength_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_Strength()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName:"Strength" ,titleDisplayMode:.inline)
    }
}
#endif




