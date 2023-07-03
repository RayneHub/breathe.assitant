//
//  BrathingView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 23/06/2023.
//

import SwiftUI

struct BrathingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0)
        {
            VStack(spacing: 0)
            {
                YoutubeInlineControl(videoID: "c4RljKVVLgg").frame(height: 200).cornerRadius(5)
                Text("* running time: 8 mins and 07 seconds").font(.footnote).frame(maxWidth:.infinity, maxHeight: 40,  alignment: .trailing)
            }
            .padding(.horizontal,20)
            
            
            Spacer()
            
           
            .frame(maxWidth:.infinity, maxHeight: .infinity,  alignment: .center)
            
        }
    }
}

struct BrathingView_Previews: PreviewProvider {
    static var previews: some View {
        BrathingView()
    }
}
