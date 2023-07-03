//
//  TipStyleContol.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 20/06/2023.
//

import SwiftUI

struct TipStyleContol<Content:View>:View {
    
    @ViewBuilder var content:Content
    let color:Color = .gray.opacity(0.3)
    
    var body: some View {
        VStack(spacing:2)
        {
            content
        }
        .foregroundColor(.black.opacity(0.7))
        .font(.body)
        .padding(.horizontal, 14)
        .padding(.vertical, 10)
        .frame(maxWidth:.infinity).background(color).cornerRadius(10)
        .background(.white).cornerRadius(4).padding(.horizontal, 0)
        
        .background(alignment: .top)
        {
                Rectangle()
                    .fill(color)
                    .cornerRadius(1)
                    .frame(width:20, height: 20, alignment: .top)
                    .background(.white)
                    .rotationEffect(.degrees(45))
                .padding(.top, -8)
        }.padding(.top)
    }
}


struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            TipStyleContol()
            {
                Text("Braintree : Pulminary Rehab").font(.headline).foregroundColor(.black.opacity(0.65))
                Divider().padding(.vertical,8)
                
                
                Text("St Johns Church")
                Text("Hay Lane South")
                Text("Braintree")
                Text("CM77 12D")
                
                Divider().padding(.vertical,8)
                Button("Navigate in Apple Maps")
                {
                    //openInMaps(destinationName:enumIdentifier.name)
                }.foregroundColor(.accentColor)
            }.padding(30)
            Spacer()
        }.background(.orange.opacity(0.2))
    }
}
