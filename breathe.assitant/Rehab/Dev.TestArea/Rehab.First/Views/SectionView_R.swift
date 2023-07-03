//
//  ListItem.swift
//  Rayne Health
//
//  Created by Christopher Raven on 17/05/2023.
//

import SwiftUI

struct SectionCaption_R: View
{
    var Caption:String;
    var Action: () -> Void = {};
    var Actionable:Bool = false;
    
    init(_ Caption: String)
    {
        self.Caption = Caption
    }
    
    init(_ Caption: String,  Action: @escaping () ->Void)
    {
        self.Caption = Caption
        self.Action = Action;
        Actionable = true;
    }
    
    var ButtonLight:Color = .gray.opacity(0.15)
    
    var body: some View
    {
        HStack(alignment:.center, spacing: 0)
        {
            Text(Caption)
                .frame( height: 37, alignment: .center)
                .fontWeight(.semibold)
                .padding(.horizontal, Rayne.Padding.horizontal)
            Spacer()
            
            //if(Actionable)
            //{
                Circle()
                   
                    .frame(width: 25, height: 25, alignment: .center)
                    .padding(.horizontal, Rayne.Padding.horizontal)
                    .onTapGesture
                {
                    Navigator.animationTimer = 0.5
                    Action()
                }
                .overlay(
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width:6).padding(2)
                )
                .padding(.vertical,6)
            //}
        }
        //.background(.blue.opacity(0.2))
    }
}



struct SectionView_R<Caption: View, Content: View>: View
{
    @State var BackGround:Color = .white;
    @State var ForeGround:Color = .white;
    
    @State private var isAnimated: Bool = false;
    
    @ViewBuilder let caption: Caption
    @ViewBuilder let content: Content
    
    var body: some View
    {
        VStack(alignment: .leading, spacing: 0)
        {
            VStack(alignment: .leading, spacing: 0)
            {
                caption.foregroundColor(ForeGround)
            }
            
            Rectangle().fill(.white.opacity(0.2)).frame(height:1)
            
            VStack(alignment: .leading, spacing: 0)
            {
                content.foregroundColor(.black.opacity(0.7))
            }
            .padding(.horizontal, Rayne.Padding.horizontal)
            .padding(.top, 10)
            .padding(.bottom, 10)
        }
        .background(BackGround)
        .cornerRadius(10)
        .offset(x: isAnimated ? 0: UIScreen.main.bounds.size.width, y: 0 )
        .opacity(isAnimated ? 1 : 0.7)
        .grayscale(isAnimated ? 0 : 2)
        .onAppear(perform:  { withAnimation(.easeIn(duration: Navigator.animationTimer)) { isAnimated.toggle() }})
    }
}



struct navSample_Previews_Previews: PreviewProvider
{
    static var previews: some View
    {
        
        VStack(spacing: 0)
        {
            Spacer()
            SectionView_R(
                BackGround : .white,
                ForeGround: .black.opacity(0.7),
                
                caption:{ SectionCaption_R("Section : Title") },
                content:
                    {
                        Text("Section Text")
                        Text("Another Section Text")
                        Text("More Section Text")
                    }
            )
            Spacer()
        }
        .padding(Rayne.Padding.horizontal)
        .background(.gray.opacity(0.1))
    }
}



