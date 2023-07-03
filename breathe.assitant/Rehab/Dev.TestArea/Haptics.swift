//
//  SwiftUIView.swift
//  Copd
//
//  Created by Christopher Raven on 08/05/2023.
//
import SwiftUI

class HapticsManager
{
    static let instance=HapticsManager() //Singleton
    
    func notification(type : UINotificationFeedbackGenerator.FeedbackType)
    {
        let generator=UINotificationFeedbackGenerator();
        generator.notificationOccurred(type)
    }
    
    func impact(style : UIImpactFeedbackGenerator.FeedbackStyle)
    {
        let generator=UIImpactFeedbackGenerator(style:style);
        generator.impactOccurred();
    }
}

struct hapticView: View
{
   
    var body: some View
    {
        VStack(spacing:20)
        {
           
            HStack(spacing:30)
            {
                Button("warning")
                {
                    HapticsManager.instance.notification(type:.warning)
                }
                .foregroundColor(.green)
                
                Button("error")
                {
                    HapticsManager.instance.notification(type:.error)
                }
                .foregroundColor(.red)
                   
                Button("success", action:
                        {
                    HapticsManager.instance.notification(type:.success)
                })
            }
			
            VStack(spacing:10)
            {
                Button("soft"){HapticsManager.instance.impact(style: .soft)}
                Button("light"){HapticsManager.instance.impact(style: .light)}
                Button("med"){HapticsManager.instance.impact(style: .medium)}
                Button("rigid"){HapticsManager.instance.impact(style: .rigid)}
                Button("heavy"){HapticsManager.instance.impact(style: .heavy)}
            }
        }
        
    }
}

struct hapticView_Previews: PreviewProvider
{
    static var previews: some View
    {
        hapticView()
    }
}
