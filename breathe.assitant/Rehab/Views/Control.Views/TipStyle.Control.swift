//
//  TipStyleContol.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 20/06/2023.
//

import SwiftUI


struct TipView : ViewModifier {
    
    var bgColor:Color = .gray.opacity(0.3)
    var fgColor:Color = .black.opacity(0.7)
    var header:String = "TipHeader"
    var headerColor:Color = .black.opacity(0.65)
    var headerPadding:CGFloat = 90
    
    var alignment:Alignment = .bottom
    
    @State private var visible = true
    
    func body(content: Content) -> some View {
        
        VStack(spacing:0)
        {
            
            if(visible)
            {
                Color(.clear)
                .background(.clear).frame(maxHeight:18)
                
                VStack(spacing:2)
                {
                    
                    Text(header).font(.headline).foregroundColor(headerColor).frame(maxWidth:.infinity).padding(.horizontal, headerPadding)
                    .overlay
                    {
                        Image(systemName:"xmark.square.fill").font(.headline).foregroundColor(.black.opacity(0.65)).frame(maxWidth:.infinity, alignment: .trailing)
                    }
                    .onTapGesture {
                        visible = false
                    }
                    
                    Divider().padding(.vertical,8)
                    
                    content
                      
                }
                .foregroundColor(fgColor)
                .font(.body)
                .padding(.horizontal, 14)
                .padding(.vertical, 10)
                .padding(.bottom, 2)
                .frame(maxWidth:.infinity).background(bgColor)
                
                .background(.white).cornerRadius(4)
                
               
                
                
                .background(alignment: alignment)
                {
                    let x:CGFloat = (alignment == .bottomTrailing || alignment == .topTrailing) ? -8 :
                        (alignment == .bottomLeading || alignment == .topLeading) ? 8 : 0
                    
                    let y:CGFloat = (alignment == .topLeading || alignment == .topTrailing ||  alignment == .top) ? -8 : 8
                        
                    
                    Rectangle()
                        .fill(bgColor)
                        .frame(width:20, height: 20)
                        .background(.white)
                        .rotationEffect(.degrees(45))
                        .offset(x:x, y:y)
                        
                }
            }
        }
        
    }
    
}

// MARK: Extensions for modier are in the same file as we marked it as fileprivate
extension View
{
    @warn_unqualified_access
    func tipView(header: String = "", headerColor:Color = .black.opacity(0.65), headerPadding:CGFloat = 0, pointerPosition:Alignment = .top ) -> some View
    {
        return modifier(TipView(header:header, headerColor:headerColor, headerPadding: headerPadding, alignment: pointerPosition))
    }
}


struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:0)
        {
            Spacer()
            VStack(spacing:0)
            {
                    Text("St Johns Church")
                    Text("Hay Lane South")
                    Text("Braintree")
                    Text("CM77 12D")
                    
                    Divider().padding(.vertical,8)
                    Button("Navigate in Apple Maps")
                    {
                        //openInMaps(destinationName:enumIdentifier.name)
                    }
                    .foregroundColor(.accentColor)
            }
            .tipView(header:"Braintree : Pulminary Rehab")
            
            .padding(.horizontal, 30)
            Spacer()
        }.background(.blue.opacity(0.2))
    }
}



struct TipView2_Previews: PreviewProvider {
    static var previews: some View
    {
        VStack(spacing:0)
        {
                Text("Swipe back (right) to go back a section.")
        }
        .tipView(header:"Chapter Header", headerColor: .pink)
        .padding(.horizontal,40)
        .frame(maxWidth:.infinity)
        .background(.red)
        .background(.orange.opacity(0.2))
    }
}

