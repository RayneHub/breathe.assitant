//
//  SwiftUIView2.swift
//  Rayne Health
//
//  Created by Christopher Raven on 25/05/2023.
//

import SwiftUI

struct NavigationBarView_R: View
{
    @State private var isAnimated: Bool = false
   

    var body: some View
    {
        HStack(alignment: .top, spacing: 0)
        {
            Button(action:
                    {
                Navigator.global.navigate(Navigator.global.back)
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            LogoView_R()
 
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }
        .offset(x: 0, y: isAnimated ? 0 : -25)
        .opacity(isAnimated ? 1 : 0.55)
        .onAppear(perform: { withAnimation(.easeIn(duration: 0.2)) { isAnimated.toggle() }})
        .onDisappear(perform: { withAnimation(.easeOut(duration: 0.2)) { isAnimated.toggle() }})
        
        
    }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView_R()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

