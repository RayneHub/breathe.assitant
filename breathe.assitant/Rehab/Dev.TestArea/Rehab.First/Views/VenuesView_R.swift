//  Rayne Health
//
//  Created by Christopher Raven on 07/05/2023.
//

import SwiftUI


struct VenuesViewSmall_R: View
{
	var body: some View
	{
		
		SectionView_R(
            BackGround : .white,
            ForeGround: .black,
			caption:{
				SectionCaption_R("Rehab Clinic : Venues")
				{
					Navigator.global.navigate(VenuesView_R(), subTitle: "pulminary rehabilitation : venues" )
				}
			},
			content:
				{
					ScrollView(.horizontal)
					{
						HStack(alignment: .top)
						{
							VenueView_R("Braintree",.pink)
							VenueView_R("Chelmsford", .cyan)
							VenueView_R("Maldon",.orange)
							VenueView_R("Southend",.blue)
							VenueView_R("Witham",.green)
							VenueView_R("Virtual",.gray)
						}
						
						
						.padding(0)
					}.scrollIndicators(.hidden)
				}
		)
	}
}

struct VenuesView_R: View
{
	var body: some View
	{
		SectionView_R(
			BackGround : .white,
			caption:
				{
					SectionCaption_R("Rehab Clinic : Venues")
				},
			content:
				{
					VStack(alignment:.leading, spacing: 0)
					{
						Spacer()
						.background(Rayne.Colours.BackgroundLight)
						VStack(alignment:.leading)
						{

							VenueView_R("Braintree",.pink)
							VenueView_R("Chelmsford", .cyan)
							VenueView_R("Maldon",.orange)
							VenueView_R("Southend",.blue)
							VenueView_R("Witham",.green)
							VenueView_R("Virtual",.gray)
							
						}
						.padding(.bottom, 15)
						Spacer()
						Rectangle().fill(.orange.opacity(0.1)).cornerRadius(12)
						Spacer()
					}
					Spacer()
				}
		)
	}
}


struct VV_Small_Previews: PreviewProvider
{
	
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			Spacer()
			VenuesViewSmall_R().padding()
			Spacer()
		}
		.background(Rayne.Colours.BackgroundLight)
	}
}

struct VV_Previews: PreviewProvider
{
	
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			//Spacer()
			VenuesView_R()
			//Spacer()
		}
		.background(Rayne.Colours.BackgroundLight)
	}
}

