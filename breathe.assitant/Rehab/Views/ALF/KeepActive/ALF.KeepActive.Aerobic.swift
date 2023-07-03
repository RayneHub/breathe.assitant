//
//  KeepActiveProgramme Page 9 [Aerobic]: ALF.KeepActive.9.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

//title:"Aerobic exercises",
//about:"In this video, we show you some aerobic exercises to work your heart and lungs.",
//videoId: "XV8Gf6D39jo",
//seconds:  450 , //7:30
//content: [
//    [
//        "Julie and Mick show you aerobic exercises to work your heart and lungs. These exercises are suitable for everyone.",
//        "The video also explains the talk test as a way to work out if you’re working too hard or not hard enough.",
//        "This video contains 5 minutes of aerobic exercise. You may want to do this just once or watch it more times to build up the length of time you exercise.",
//    ],
//    [
//        "It’s recommended we all do 150 minutes of this sort of exercise every week. That’s about 20 minutes a day – but doing even 10 minutes in one session counts. To get fitter and feel the benefits, you should feel only moderately breathless while you do these exercises. "
//    ]
//],
//colors: [.purple.opacity(0.3), .orange.opacity(0.3), .gray.opacity(0.3),  .red.opacity(0.5)],
//sectionTitle: ["About this Video","Note:"]

struct ALF_KAP_Aerobic: View {
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .purple.opacity(0.5),
            fgColor: .black.opacity(0.7),
           
            title: "Aerobic exercises",
            about: "Learn about some aerobic exercises to work your heart and lungs that you can do at home.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "7. Aerobic exercises",
                            about: "Learn about some aerobic exercises to work your heart and lungs that you can do at home.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "ThqXqDL6YqI", runTime: 450).View  //seconds:  450 , //7:30
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,10)
                            .padding(.bottom, 30)
                        
                        SectionControl(
                            title: "About this Video",
                            content:  "Julie and Mick show you aerobic exercises to work your heart and lungs. These exercises are suitable for everyone.\n\n" +
                                    "The video also explains the talk test as a way to work out if you’re working too hard or not hard enough.\n\n" +
                                    "This video contains 5 minutes of aerobic exercise. You may want to do this just once or watch it more times to build up the length of time you exercise.",
                            color: .gray.opacity(0.3)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .padding(.top, 10)
                        
                        ALF.HeaderControl(
                            title: "Note:",
                            about: "It’s recommended we all do 150 minutes of this sort of exercise every week. \n\nThat’s about 20 minutes a day – but doing even 10 minutes in one session counts.\n\nTo get fitter and feel the benefits, you should feel only moderately breathless while you do these exercises.",
                            color: .yellow.opacity(0.08)
                            
                        ).foregroundColor(.black.opacity(0.7))
                            
                        
                        //title:"Cool down and stretching",
                        //about:"After any form of exercise, you should complete a cool down. Cool down exercises and stretches help you recover after exercise.",
                        
                        ALF.PageNavigationLinkControl(
                            title: "Next: Cool down and stretching",
                            about: "Learn about some cool down exercises and stretches that you can do at home.",
                            color: .blue.opacity(0.9),
                            navigatesTo: .ALFKeepActive(index: 10)
                        )
                        .foregroundColor(.white.opacity(0.99))
                        
                    }.background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_ExAerobic_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_Aerobic()
            .routerPreview(navigationTitle: "Keep Active Programme",  previewName: "Aerobic",  titleDisplayMode:.inline)
    }
}
#endif




