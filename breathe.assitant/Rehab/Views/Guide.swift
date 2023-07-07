//
//  Guide.swift
//  breathe.assitant
//
//  Created by Christopher Raven on 03/07/2023.
//

import SwiftUI


struct Guide: View
{
    @State var showTip:Int = 0
    
    @State var scrollIndex : Int = 0
    @State var anchor:UnitPoint = .top
    @ScaledMetric(relativeTo:.body) var height = 17 // default height of body
    
    let animation = Animation.linear(duration: 1).repeatForever(autoreverses: false)
    let logo = Text(Image("menu.icon")).baselineOffset(-3)
    
    func dummyNav (bgColor:Color = .yellow.opacity(0.7), fgColor:Color = .black.opacity(0.60), direction:direction = .horizontal) -> some View {
        
        HStack(spacing: 0)
        {
            VStack(alignment: .leading, spacing: 15)
            {
                Text("Navigation Links").font(.title2).redacted(reason: .placeholder)
                Text("Find out more about about Navigation Links").redacted(reason:.placeholder)
            }
            .frame(maxWidth:.infinity, alignment: .leading)
        }
        .padding(.vertical,20)
        .padding(.horizontal,30)
        
        .overlay{
            if(direction == .horizontal || direction == .left ){
                ALF.NavigationDirection_Control(function: {})
            }
            
        }
        .overlay{
            if(direction == .horizontal || direction == .right ){
                ALF.NavigationDirection_Control(direction: .right, function: { } )
            }
            
        }
        .background(bgColor)
        .foregroundColor(fgColor)
    }
    
    func dummyParagraph() -> some View {
        VStack(alignment: .leading, spacing: 0)
        {
            Text("Introduction.").font(.title).padding(.bottom,20)
            Text("This introductory page teaches you how to navigate this application").padding(.bottom,20)
            Text("Please spend a minute to read the tips.")
            Text("Press the X in the right coner of this tip to close it.")
        }
        .padding(.top, 20)
        .padding(.bottom, 30)
        .padding(.horizontal, 30)
        .foregroundColor(.yellow.opacity(0.5))
        .frame(maxWidth:.infinity,  alignment: .top).redacted(reason: .placeholder)
        
    }
    
    
    func tip0() -> some View {
        
        VStack(alignment: .leading, spacing: 0)
        {
            Text("This introductory page teaches you how to navigate this application.\n")
            Text("Please spend a minute to read the tips. You will not see them again unless you click the **?** button when available.\n")
            Text("Tap the \(Image(systemName:"xmark.square")) in the right coner of this tip to close it.\n")
            //Text("If you are an Iphone expert and want to skip this quick tutorial you use the button below.")
            //Button("Skip Button"){}.buttonStyle(.borderedProminent).frame(maxWidth:.infinity)
        }
        .onDisappear{
            scrollIndex=1
            showTip=1
            
        }
        .tipView(header: "Welcome tips", headerColor: .pink, pointerPosition: .center)
        .padding(.horizontal,40)
        .opacity(0.97)
        .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
    }
    
    func tip1() -> some View {
        
        Text("You can swipe back (right) on this navigation bar to go back to previous sections.\n\nSome pages will allow you to swipe back to previous pages too.")
        
            .onDisappear{
                showTip=2
            }
            .tipView(header: "Navigation", headerColor: .pink)
            .padding(.horizontal,40)
            .opacity(0.93)
            .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
    }
    
    func tip2(dir:direction = .left) -> some View {
        
        VStack(alignment: .leading, spacing: 0)
        {
            let leftImage=Image(systemName: direction.left.toSFString)
            let rightImage=Image(systemName: direction.right.toSFString)
            
            if(dir == .horizontal){
                Text("Tap the **\(leftImage)** button on the left to go backwards and the **\(rightImage)**  to go forwards. \n\nYou can also swipe right to go back and left to go forward.")
            }
            
            else if(dir == .left){
                Text("Tap the **\(leftImage)** button on the left to go backwards. \n\nYou can also swipe right on this button to go back.")
            }
            
            else
            {
                Text("Tap the **\(rightImage)** button on the right to go forwards. \n\nYou can also swipe left on this button to go forward.")
            }
        }
        
        .onDisappear{
            
            if(showTip == 2)
            {
                showTip=3
                scrollIndex=3
                
            }
            else if(showTip == 3)
            {
                showTip=4
                scrollIndex=4
            }
            else if(showTip == 4)
            {
                anchor = .bottom
                showTip=5
                scrollIndex=5
            }
            
            
        }
        .tipView(header: (dir == .horizontal ? "Dual" : dir == .left ? "Left" : "Right") + " navigation button", headerColor: .pink)
        .padding(.horizontal,30)
        .opacity(0.93)
        .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
        
    }
    
    func tip5() -> some View {
        
        Text("Some sections have a different footer that provide links to social media relevant to the section you are visiting.")
        
            .onDisappear{
                showTip=6
            }
            .tipView(header: "Social media and links", headerColor: .pink, pointerPosition: .bottomTrailing)
            .padding(.horizontal,40)
            .opacity(0.93)
            .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
    }
    
    func tip6() -> some View {
        
            Text("Tap this button to go to the applications first page.\n\nHold this button to see the Navigation Menu.")
 
            .onDisappear{
                showTip=7
                scrollIndex=0
            }
            .tipView(header: "Footer navigation button", headerColor: .pink, pointerPosition: .bottomLeading)
            .padding(.horizontal,40)
            .opacity(0.93)
            .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
    }
    
    func tip7() -> some View {
        VStack(alignment: .leading, spacing: 0)
        {
            Text("Thankyou for taking the time to read our tips. Tap the \(Image(systemName:"xmark.square")) in the corner to continue.\n")
        }
            .onDisappear{
                self.firstRun(disable: true)
                showTip=0
            }
            .tipView(header: "Exit tips", headerColor: .pink, pointerPosition: .center)
            .padding(.horizontal,40)
            .opacity(0.93)
            .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .center)
    }
    
    
    var body: some View {
        ScrollViewReader {
            value in
            ScrollView{
                VStack(alignment: .leading, spacing: 0)
                {
                    VStack(alignment: .leading, spacing: 0){
                        dummyNav(bgColor: .orange.opacity(0.7), direction: .horizontal).redacted(reason: .placeholder).id(0)
                        dummyParagraph()
                        dummyParagraph()
                    }
                    .overlay{
                        if(showTip == 0){
                            tip0()
                        }
                        if(showTip == 7){
                            tip7()
                        }
                    } .animation(.default.speed(1), value: showTip)
                    
                    
                    VStack(alignment: .leading, spacing: 0){
                        
                        dummyNav(bgColor: .pink.opacity(0.7), direction: .horizontal).redacted(reason: .placeholder).id(1)
                        dummyParagraph()
                            .overlay
                        {
                            if(showTip == 2){
                                tip2(dir:.horizontal)
                            }
                            
                        }
                        .animation(.default.speed(1), value: showTip)
                        .foregroundColor(.black.opacity(0.77))
                    }
                    .overlay{
                        if(showTip == 1){
                            tip1()
                        }
                        
                    }
                    .animation(.default.speed(1), value: showTip)
                    
                    VStack(alignment: .leading, spacing: 0){
                        dummyNav(bgColor: .cyan.opacity(0.7), direction: .left).redacted(reason: .placeholder).id(3)
                        dummyParagraph()
                            .overlay
                        {
                            if(showTip == 3){
                                tip2(dir:.left)
                            }
                            
                        }
                    }
                    dummyNav(bgColor: .green.opacity(0.7), direction: .right).redacted(reason: .placeholder).id(4)
                    Spacer()
                    
                    dummyParagraph()
                        .overlay
                    {
                        if(showTip == 4){
                            tip2(dir:.right)
                        }
                        
                    }
                    .animation(.default.speed(1), value: showTip)
                    .foregroundColor(.black.opacity(0.77))
                    
                    
                    dummyNav(bgColor: .gray.opacity(0.7), direction: .horizontal).redacted(reason: .placeholder)
                    dummyParagraph()
                    
                    dummyParagraph()
                     
                    ALF.NavigationFooter().id(5)
                    
                }
                .background(.white)
                
            }
            .overlay
        {
            if(showTip == 5){
                tip5().padding(.bottom,60).offset(x:20, y:5)
            }
            if(showTip == 6){
                tip6().padding(.bottom,60).offset(x:-10, y:5)
            }
        }
        .animation(.default.speed(1), value: showTip)
        .foregroundColor(.black.opacity(0.140))
            .onChange(of: scrollIndex) { idx in
                withAnimation{
                    value.scrollTo(idx, anchor: .top)
                }
            }
            
            .simultaneousGesture(DragGesture(minimumDistance: 0))
        }
    }
    
}

struct Guide_Previews: PreviewProvider {
    static var previews: some View {
        Guide()
            .routerPreview(navigationTitle: "Keep Active Programme", previewName: "Guide", titleDisplayMode:.inline, navigationBarHidden: true)
    }
}


