//
//  RoundIconControl.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 20/06/2023.
//

import SwiftUI

struct RoundIconControl:View {
    
    // MARK: Colours
    
    var bgColor:Color = .white
    var fgColor:Color = .green
    var borderColor:Color = .gray
    var string:String = "cross.case.circle.fill"
    var body: some View {
        Image(systemName: string)
            .resizable()
            .scaledToFit()
            .foregroundColor(bgColor.opacity(0.9))
            .frame(width: 40)
            .background{
                Circle()
                    .fill(fgColor.opacity(0.6))
            }
            .background{
                Circle()
                    .fill(bgColor)
                    .padding(-2)
            }
            .background{
                Circle()
                    .fill(borderColor.opacity(0.2))
                    .padding(-4)
            }
    }
        
}

struct VenueIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            RoundIconControl()
            Spacer()
        }
        .frame(maxWidth:.infinity)
        .background(.orange.opacity(0.05))
    }
}
