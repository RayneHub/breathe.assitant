//
//  SwiftUIView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 25/05/2023.
//

import SwiftUI

struct LogoView_R: View {
    @State private var isAnimated: Bool = false
    
    var body: some View
    {
        HStack(spacing: 4) {
            Text("Rayne".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image(systemName: "waveform.path")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Health".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
       
    }
}

// MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView_R()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
