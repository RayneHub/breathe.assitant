//
//  TimerView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 08/05/2023.
//

import SwiftUI

struct TimerView: View
{
    @State var countdown:Rayne.CountdownTimer;
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View
    {
        
        VStack(alignment: .center, spacing:0.0)
        {
            Text("\(countdown.minuteView)")
                .font(.system(size: 80, weight: .regular))
                .fontWeight(.black)
                .foregroundColor(Color.gray)
            
                .scaledToFit()
                .onTapGesture
                {
                    countdown.switchState()
                }
            
            HStack(spacing:30)
            {
                
                Text("\(countdown.state)")
                    .onTapGesture
                    {
                        countdown.switchState();
                    }
                    .foregroundColor(.green)
                    .font(.system(size: 40, weight: .regular))
                
                Text("reset")
                    .onTapGesture
                    {
                        if(countdown.timerRunning == false)
                        {
                            countdown.reset()
                        }
                    }
                    .onLongPressGesture(minimumDuration: 1)
                    {
                        countdown.reset()
                    }
                
                .foregroundColor(.red)
                .font(.system(size: 40, weight: .regular))
                
            }
        }
        .padding()
        
        .onReceive(timer)
        {
            _ in
            countdown.tick()
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
    
    init(minutes: UInt)
    {
        self.countdown = Rayne.CountdownTimer(minutes: minutes)
    }
    
    init(seconds: UInt)
    {
        self.countdown = Rayne.CountdownTimer(seconds: seconds)
    }
}

struct TimerView_Basic_1_Previews: PreviewProvider
{
    static var previews: some View
    {
        TimerView(minutes: 4)
    }
}

//        List
//        {

//            Section{
//                Text("1. Walking").font(.largeTitle)
//                Text("A nice gentle walk building up to  a march. \n\nYou should aim to be 3 on the borg scale. \n\nYour heart rate should not exceed 120 bpm and your oxygen should not fall below 88 (Except for patients with pulmanory fibrosis)\n\nIf you have known heart problems then you must not stop at the end of this timer and should move slowly between excercises.")
//                    .font(.title2)
