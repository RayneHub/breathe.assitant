
//  Rayne Health
//
//  Created by Christopher Raven on 17/05/2023.
//

import SwiftUI

struct VenueView_R: View
{
	var venue:String;
	var foreground:Color;
	
    var body: some View
	{
		HStack(alignment: .center)
		{
			Image(systemName: "heart.text.square.fill")
			Text("\(venue)")
		}
		.foregroundColor(foreground)
		.padding(3)
    }
	
	init(_ venue:String, _ color:Color)
	{
		self.venue = venue;
		self.foreground = color;
	}
}


struct Venue_Previews: PreviewProvider {
	static var previews: some View
	{
		VenueView_R("Braintree",  .red)
	}
}
