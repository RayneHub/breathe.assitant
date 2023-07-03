//
//  ColourScheme.swift
//  Rayne Health
//
//  Created by Christopher Raven on 19/05/2023.
//

import SwiftUI

func XCol(_ color:Color)->Color { return color }
func XGrad(_ gradient:LinearGradient)->LinearGradient { return gradient }

struct Rayne
{
    func PickColor(
        color:Color
    )->Color { return color }
    
	struct Colours
	{
		static var BackgroundLight:Color = .gray.opacity(0.2)
		static var ButtonLight:Color = .gray.opacity(0.25)
		static var ForeGroundLight:Color = .red.opacity(0.6)
		static var TitleLight:Color = .purple.opacity(1)
        
        static var DarkBlue:Color = XCol(Color(red: 0.046, green: 0.25, blue: 0.538)) // UIColor(red: 0.25, green: 0.44, blue: 0.70, alpha: 1.00)
        static var LightBlue:Color = XCol(Color(red: 0.046, green: 0.25, blue: 0.538)) // UIColor(red: 0.25, green: 0.44, blue: 0.70, alpha: 1.00)
        static var DarkBlueGrad:LinearGradient = LinearGradient(colors: [ Color(red: 0.046, green: 0.25, blue: 0.538), Color(red: 0.25, green: 0.44, blue: 0.70)], startPoint: .trailing, endPoint: .leading)
	}
	
	struct Padding
	{
		static var horizontal:Double = 15;
	}
}



