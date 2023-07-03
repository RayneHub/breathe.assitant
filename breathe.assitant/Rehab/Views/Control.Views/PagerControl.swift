//
//  PagerControl.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 02/07/2023.
//

import SwiftUI

struct PagerControl<Content: View>: View {
    let pageCount: Int
    @Binding var canDrag: Bool
    @Binding var currentIndex: Int
    let content: Content
    
    
    init(pageCount: Int, canDrag: Binding<Bool>, currentIndex: Binding<Int>, @ViewBuilder content: () -> Content) {
        self.pageCount = pageCount
        self._canDrag = canDrag
        self._currentIndex = currentIndex
        self.content = content()
    }
    
    
    @GestureState private var translation: CGFloat = 0
    
    var body: some View {
        GeometryReader {
            geometry in
            HStack(spacing: 0)
            {
                self.content.frame(width: geometry.size.width)
            }
            .frame(width: geometry.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.currentIndex) * geometry.size.width)
            .offset(x: self.translation)
            .animation(.interactiveSpring(), value: currentIndex)
            .animation(.interactiveSpring(), value: translation)
            .gesture(!canDrag ? nil : // <- here
                
                DragGesture()
                    .updating(self.$translation) {
                        value, state, _ in
                        state = value.translation.width
                    }
                    .onEnded {
                        value in
                        let offset = value.translation.width / geometry.size.width
                        let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                        self.currentIndex = min(max(Int(newIndex), 0), self.pageCount - 1)
                    }
            )
        }
    }
    
}

struct TView: View {
    
    
    @State private var currentPage = 0
    @State var canDrag: Bool = true
    
    
    var body: some View {
        
        PagerControl(pageCount: 3, canDrag: $canDrag, currentIndex: $currentPage) {
            VStack {
                Color.blue
                
                
                Button {
                    canDrag.toggle()
                } label: {
                    Text("Toogle drag")
                }

            }
            
            VStack {
                Color.red
                
                
                Button {
                    canDrag.toggle()
                } label: {
                    Text("Toogle drag")
                }

            }
            
            VStack {
                Color.green
                
                
                Button {
                    canDrag.toggle()
                } label: {
                    Text("Toogle drag")
                }

            }
            
        }
        
    }
    
}

#if DEBUG
struct TV_Previews: PreviewProvider {
    static var previews: some View
    {
       TView()
            
    }
}
#endif
