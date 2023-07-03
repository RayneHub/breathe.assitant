//  Rayne Health
//
//  Created by Christopher Raven on 07/05/2023.
//

import SwiftUI

struct TestView_R: View
{
    var body: some View {
        VStack(spacing: 0)
		{
			SectionCaption_R("Rehab Clinic : Venues").padding(.horizontal, 8)
			//Color("ColorBackground").frame(height: 2)
            Rectangle().fill(Rayne.Colours.BackgroundLight).frame(height:2)
            VStack(spacing: 10)
			{
                HStack
				{
                    Text("Test")
                    Spacer()
                    Text("Test.Right")
                    Image(systemName: "chevron.right")
                        .foregroundColor(Rayne.Colours.TitleLight)
                }
				.padding(5)
                .foregroundColor(.black)
                HStack
				{
					Text("Test2")
					Spacer()
					Text("Test2.Right")
					Image(systemName: "chevron.right")
                        .foregroundColor(Rayne.Colours.TitleLight)
                }
				.padding(5)
				.foregroundColor(.black)
                
            }
            .padding(5)
            
        }
        .background(Rayne.Colours.BackgroundLight.cornerRadius(10))
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
		
//		ItemContent()
//		{
			TestView_R()
		//}
    }
}
