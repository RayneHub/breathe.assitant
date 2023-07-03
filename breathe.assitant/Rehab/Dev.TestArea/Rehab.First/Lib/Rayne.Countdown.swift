//
//  Rayne.Countdown.swift
//  Rayne Health
//
//  Created by Christopher Raven TA Rayne on 08/05/2023.
//
// ChangeLog
// 10/05/23 : Added Vibrate for Reset and switchState : This is to test and investigate why vibration doesn't occur on all IOS devices - and seems linked to haptic settings
// Check Version Number

import AudioToolbox

extension Rayne
{
    struct CountdownTimer
    {
        static func vibrate()
        {
            AudioServicesPlayAlertSoundWithCompletion(kSystemSoundID_Vibrate, nil)
        }
        
        var value:UInt = 0;
        var seconds:UInt = 0;
        var timerRunning = false;
        
        var hms: (hours:UInt, minutes:UInt, seconds:UInt)
        {
            let h:UInt = (self.seconds % 86400) / 3600;
            let m:UInt = (self.seconds % 3600) / 60;
            let s:UInt = (self.seconds % 3600) % 60;
            return (hours:h, minutes:m, seconds:s);
        }
        
        /// TODO: Future usage may require full converstion to Years/Months/Weeks/Days/H/M/S so finsih this shotly :
        /// LOW PRIORITY
        ///
        var valuehms: (hours:UInt, minutes:UInt, seconds:UInt){
            //let y=self.seconds / 31536000
            
            //let totalDays:UInt = (self.seconds % 31536000) / 86400;
            //let w:UInt = totalDays / 7;
            //let d:UInt = totalDays % 7;
            let h:UInt = (self.value % 86400) / 3600;
            let m:UInt = (self.value % 3600) / 60;
            let s:UInt = (self.value % 3600) % 60;
            return (hours:h, minutes:m, seconds:s);
        }
        
        var hourView:String
        {
            let (h, m, s) = (hms.hours, hms.minutes, hms.seconds);
            let m_string =  (m < 10 && valuehms.minutes > 9 ) ? "0\(m)" : "\(m)";
            let s_string =  s < 10 ? "0\(s)" : "\(s)";
            let h_string =  h < 10 ? "0\(h)" : "\(h)";
            return "\(h_string):\(m_string):\(s_string)";
        }
        
        var minuteView:String
        {
            let (m, s) = (hms.minutes, hms.seconds);
            let m_string =  (m < 10 && valuehms.minutes > 9 ) ? "0\(m)" : "\(m)";
            let s_string =  s < 10 ? "0\(s)" : "\(s)";
            return "\(m_string):\(s_string)";
        }
        
        var state:String
        {
            return timerRunning ? "pause":"start";
        }
        
        
        mutating func tick()
        {
            if (seconds > 0 && timerRunning)
            {
                seconds = seconds - 1;
                if(seconds % 30 == 0)
                {
                    CountdownTimer.vibrate()
                }
            }
            else
            {
                timerRunning = false;
            }
        }
        
        mutating func reset()
        {
            timerRunning = false;
            seconds=value;
            CountdownTimer.vibrate()
        }
        
        mutating func switchState()
        {
            timerRunning = (timerRunning == true ? false:true);
            CountdownTimer.vibrate()
        }
        
        private init(value:UInt , timerRunning: Bool = false)
        {
            self.value = value;
            self.seconds = value;
            self.timerRunning = timerRunning;
        }
        
        init(seconds: UInt = 300, timerRunning: Bool = false)
        {
            self.init(value:seconds, timerRunning: timerRunning);
        }
        
        init(minutes: UInt = 4, timerRunning: Bool = false)
        {
            self.init(value:minutes*60, timerRunning: timerRunning);
        }
        
    }
    
}
