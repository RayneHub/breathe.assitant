//  Rayne Health
//
//  Created by Christopher Raven on 07/05/2023.
//

import SwiftUI

struct BookViewSmall_R: View
{
    @State var show = false
    
	var body: some View
	{
		
		SectionView_R(
            BackGround : .white,
            ForeGround: .black.opacity(0.7),
			caption:{
				SectionCaption_R("Books")
				{
					Navigator.global.navigate(BookView_R(), subTitle: "pulminary rehabilitation : Books")
				}
			},
			content:
				{
					
					Text("COPD Book List")
					//Spacer()
					
					Text("Will include a scrolling list of books with images that when clicked will  load digital version.")
				}
		)
	}
}

struct BookView_R: View {
	var body: some View
	{
		
		SectionView_R(
			BackGround : .white,
			caption:{
				SectionCaption_R("Books")
			},
			content:
				{
					
					Text("COPD Book List")
					Spacer()
					
					Text("Will include a scrolling list of books with images that when clicked will  load digital version.")
				}
		)
	}
}



struct BookViewSmall_Previews: PreviewProvider
{
	
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			Spacer()
			BookViewSmall_R().padding()
			Spacer()
		}
		.background(Rayne.Colours.BackgroundLight)
	}
}


struct BookView_Previews: PreviewProvider {
	static var previews: some View {
		BookView_R()
			.previewLayout(.sizeThatFits)
			.padding()
            .background(Rayne.Colours.BackgroundLight)
	}
}

