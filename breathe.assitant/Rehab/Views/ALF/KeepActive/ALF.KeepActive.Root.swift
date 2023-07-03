//
//  KeepActiveProgramme Page 0 [Root] : ALF.KeepActive.Root.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI



struct KeepActiveProgramme : View{
    @EnvironmentObject var navigator: NavigationRouter
   
    //let p=navigator.chapter 
    var body: some View {
        
            ScrollView{
                
                VStack(alignment:.leading, spacing: 0)
                {
                    Image("aluk.breathIsLife").resizable().scaledToFill().frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottom)
                    
                    VStack(alignment:.leading, spacing: 0)
                    {
                        
                        ALF.PageNavigationLinkControl(
                            title: "Keep Active Programme",
                            about: "If you have a lung condition, being active can help to improve your quality of life and can also help you to manage your condition.",
                            color: .blue,
                       
                            navigatesTo: .ALFKeepActive(index: 3),
                            hide:1
                        )
                        .foregroundColor(.white.opacity(0.99))
                        
                        .overlay{
                           
                            if(!navigationManager.AlfProgammeUnlocked){
                                ALF.HeaderControl(
                                    title: "Keep Active Programme",
                                    about: "If you have a lung condition, being active can help to improve your quality of life and can also help you to manage your condition.",
                                    color: .red.opacity(0.9)
                                    
                                )
                                .foregroundColor(.white)
                            }
                            
                        }

                        ALF.HeaderControl(
                            title: "About",
                            about: "Our keep active programme includes advice and guided videos that give you everything you need to start exercising.\n\nIt teaches you how, and why, to warm up before you start exercising.\n\nNext, it include step-by-step strength and aerobic exercises.\n\nFinally, it teaches you how, and why, to cool down and stretch at the end of an exercise session.",
                            color: .white
                            
                        )
                        .foregroundColor(.black.opacity(0.7))
                        
                        if(!navigationManager.AlfProgammeUnlocked){
                            ALF.HeaderControl(
                                title: "How do I access it?",
                                about: "Before beginning our exercise programme, you must vist the **'Before you start'** and **'Exercise levels'** sections below. This will unlock access to the **'Keep Active Programme'** (above) for you .",
                                color: .white
                                
                            )
                            .foregroundColor(.black.opacity(0.7))
                        }
                        
           
                        ALF.PageNavigationLinkControl(
                            title: "Before you start",
                            about: "Before beginning our exercise programme, you must read this section.\n\nIt explores what you need to do before you start this exercise programme and gives pointers on when you should stop and seek advice from a healthcare provider.",
                            color: .yellow.opacity(0.7),
                            navigatesTo: .ALFKeepActive(index: 1),
                            hide:1
                        ).foregroundColor(.black.opacity(0.7))
                        
                        
                        ALF.PageNavigationLinkControl(
                            title: "Exercise levels",
                            about: "Find out how to choose the right level to exercise and and why. \n\nExplore what you need to do before you begin this programme and get pointers on when you should stop and seek advice from a healthcare provider.",
                            color:.indigo.opacity(0.9),
                            navigatesTo: .ALFKeepActive(index: 2),
                            hide:1
                        )
                        .foregroundColor(.white.opacity(0.99))
                        
                        
                        ALF.HeaderControl(
                            title: "Further Information",
                            about: "The content of this programme was funded and reviewed by Boehringer Ingelheim. \n\nYou can also read about the programme in our exercise handbook which includes an exercise diary to track your progress.",
                            color: .white.opacity(0.3)
                        )
                        .foregroundColor(.black.opacity(0.7))
                        
                        
                        ALF.HeaderControl(
                            title: "Development",
                            about: "This programme was developed by: Boehringer Ingelheim and Asthma + Lung UK (previously the British Lung Foundation)\n\nThis App was voluntarily developed by\nChristopher Raven (TA) Rayne Studios.",
                            color: .blue.opacity(0.08)
                        )
                        .foregroundColor(.black.opacity(0.7))
                        
                    }
                    .background(.white)
                    
                    ALF.NavigationFooter().navigationBarTitle("", displayMode: .inline)
                        
                    
                }
            }
            .scrollIndicators(.visible)
        
    }
}


#if DEBUG
struct ALF_Exercising_Safely_Previews: PreviewProvider {
    static var previews: some View
    {
      
        KeepActiveProgramme()
            .background(ALF.Background)
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Keep Active Root", titleDisplayMode:.inline, navigationBarHidden: true)
    }
}
#endif


struct SectionControl: View {
    
    var title:String
    var content:String
    var color:Color
    
    // MARK: Generates the Section View's Body from the sectionElements Array
    
    var body: some SwiftUI.View {
        
        VStack(alignment: .leading, spacing: 20)
        {
            Text(title)
                .font(.title3)
                .padding(.horizontal, 20)
                .padding(.vertical,10)
                .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .leading)
                .background(color)
            
            // MARK: Get our ViewBuilder to Build the section contetns
            
            Text(.init(self.content))
                .padding(.horizontal, 20)
                .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .leading)
        }
        .padding(.bottom,20)
        .background(color.opacity(0.3))
        .cornerRadius(4)
    }
    
}





