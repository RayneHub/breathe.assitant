//
//  KeepActiveProgramme Page 9 [NextSteps] : ALF.KeepActive.9.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

struct ALF_KAP_NextSteps: View {
    @EnvironmentObject var navigator: NavigationRouter
    
    var body: some SwiftUI.View {
        
        ALF.ContentPage(
            bgColor: .yellow.opacity(0.7),
            fgColor: .black.opacity(0.73),
            title: "Next Steps",
            about: "Learn how to keep up your exercise routine.",
            hide: 2,
            content:
                {
                    VStack(spacing: 0){
                        ALF.HeaderControl(
                            title: "9. Next Steps",
                            about: "This video explains how to build activity into your daily life and keep up your exercise routine.",
                            color: .white
                            
                        ).foregroundColor(.black.opacity(0.7))
                        
                        ALF.Video(id: "yqIdtKnl7Ro", runTime: 167).View //2:17
                            .frame(height: 200)
                            .padding(.horizontal, 30)
                            .padding(.top,10)
                            .padding(.bottom, 20)
                        

                        SectionControl(
                            title: "About this Video",
                            content: "This video gives you a reminder of how often you should aim to exercise. \n\nIt also gives you  ideas for how to build activity into your daily life and keep up your exercise routine, including getting on a pulmonary rehabilitation course or joining an exercise class.",
                            color: .purple.opacity(0.3)

                        )
                        .foregroundColor(.black.opacity(0.7))
                        .padding(.horizontal, 30)
                        .padding(.vertical, 20)
                        

                        
                        ALF.HeaderControl(
                            title: "Congratulations",
                            about: "Congratulations on completing this programme.\n\nAim to do this 2-3 times weekly to improve your fitness, lung health and general health.\n\nEven if you don't feel like you are improving from particpating in this program, it will most likely slow any further deteriaration",
                            color: .white.opacity(0.2)
                           
                        ).foregroundColor(.black.opacity(0.7))
                            .padding(.bottom, 10)
                        
#if DEBUG
                        Group{
                            
                            Text ("Testing Danger Zone" ).font(.title).padding(.vertical ,10)
                            Button("NavTest"){
                                
                                
                                navigator.resetChapter()
                            }.buttonStyle(.borderedProminent).tint(.orange)
                            
                            Spacer()
                            Button("NavTest"){
                                
                                
                                navigator.resetChapter()
                                navigator.goBack()
                            }.buttonStyle(.borderedProminent).tint(.pink).padding(.bottom, 30)
                            
                            ALF.PageNavigationLinkControl(
                                title: "Keep active programme : ERR Test 1",
                                about: "Return to this programmes main page",
                                color:  .gray.opacity(0.2),
                                navigatesTo: .ALFKeepActive(index: 99),
                                hide:1
                            )
                            .foregroundColor(.black.opacity(0.7))
                                .padding(.horizontal, 30)
                                .padding(.bottom, 30)
                            
                            ALF.PageNavigationLinkControl(
                                title: "Home",
                                about: "Return back to the rayne health : ERR Test 2",
                                color: .yellow.opacity(0.8),
                                navigatesTo: .ALFKeepActive(index: 99),
                                hide:1
                            )
                            .foregroundColor(.black.opacity(0.7))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                        }
                        
#else
                       
                        Button("*** RETURN TO ALF HOME ***"){
                            navigator.resetChapter()
                            navigator.goBack()
                        }
                        .frame(width:400)
                        .buttonStyle(.borderedProminent).tint(.pink)
                        .padding(.vertical, 20)
                        
#endif
                     
                    }
                    .background(.white)
                }
        )
    }
}


#if DEBUG
struct ALF_KAP_ExNext_Previews: PreviewProvider {
    static var previews: some View
    {
        ALF_KAP_NextSteps()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Next", titleDisplayMode:.inline)
    }
}
#endif




