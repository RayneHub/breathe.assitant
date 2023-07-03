//
//  ActivityViewLarge.swift
//  Rayne Health
//
//  Created by Christopher Raven on 18/05/2023.
//

import SwiftUI


struct ActivityView_R: View
{
   
	var body: some View
    {
        SectionView_R(
            BackGround : .green,
            ForeGround: .yellow,
            caption:{ SectionCaption_R("Activity") },
            content:
                {
                    Text("This is 2 the full page of the activity tracker. This is the full page of the activity tracker. This is the full page of the activity tracker. This is the full page of the activity tracker. ")
                }
        )
	}

}

struct ActivityViewSmall_R: View
{
	var body: some View
	{
		SectionView_R(
            BackGround : .white,
            ForeGround: .black.opacity(0.7),
			caption:{
				SectionCaption_R("Activity")
				{
					Navigator.global.navigate(ActivityView_R(),subTitle: "pulminary rehabilitation : Activity Tracker")
				}
			},
			content:
				{
					HStack
					{
						Text("M T W T F S S")
						Spacer()
					}
					Text("Will include a graphic showing the week/months past excercise, heart rate and sp02 (if recorded)")
				}
		)
	}
}

struct AV_Small_Previews: PreviewProvider
{
	
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			Spacer()
			ActivityViewSmall_R().padding()
			Spacer()
		}
		.background(Rayne.Colours.BackgroundLight)
	}
}

struct AV_Large_Previews: PreviewProvider
{
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			Spacer()
			ActivityView_R().padding()
			Spacer()
		}
		
	}
}
