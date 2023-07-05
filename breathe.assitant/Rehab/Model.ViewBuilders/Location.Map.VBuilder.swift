//
//  Location.ViewBuilder.swift
//  Rayne Health
//
//  Created by Christopher Raven on 20/06/2023.
//

import SwiftUI
import MapKit

extension Location{
    
    @ViewBuilder private func addressBuilder() -> some View {
        let address:Address = self.enumIdentifier.address!
        
        Text(address.line1)
        if(address.line2 != "")
        {
            Text(address.line2) 
        }
        Text(address.town)
        Text(address.postCode)
    }
    
    // MARK: Builds the MapAnnotation (pinView) for a Map
    @ViewBuilder private func pinBuilder() -> some View {
        
        ZStack{
            Group()
            {

                addressBuilder()
                
                Divider()
                    .padding(.vertical,8)
                Button("Navigate in Apple Maps")
                {
                    openInMaps(destinationName:enumIdentifier.name)
                }
                .foregroundColor(.accentColor)
            }.tipView(header: self.enumIdentifier.name + " : Pulminory Rehab" , headerPadding: 30)
            
            .padding(.top,270)
            RoundIconControl(fgColor: .blue, borderColor: .gray)
        }
    }
    
    // MARK: map ViewBuilder
    @ViewBuilder func mapBuilder() -> some View {
        
        Map(coordinateRegion: .constant(CoordinateRegion), annotationItems: [self])
        {
            item in
            
            MapAnnotation(
                coordinate: coordinateCenter,
                content: pinBuilder
            )
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(enumIdentifier.name)
        .navigationBarTitleDisplayMode(.large)
        
    }
    
}

/// - Tag: MapPinPreview
struct LocationsMapTest: PreviewProvider
{
    static var previews: some View
    {
        VStack
        {
            List{
                Section {
                    Text("Using ForEach(venues.list)").foregroundColor(.accentColor)
                    ForEach(venues.mapList, id: \.name)
                    {
                        item in
                        NavigationLink(item.name, value: navigationRoutes.mapView(location: item))
                    }
                }
                
                Section
                {
                    Text("Using ForEach(venues.allCases) would also show").foregroundColor(.accentColor)
                    NavigationLink("Virtual", value: navigationRoutes.mapView(location: .Virtual))
                }
                
                Section
                {
                    Text("NOTE:\n\nIt is not possible to call a location.map on a concrete venue that does not have an assoicated array element in locations as these are validated on app startup. \n\nThis also allows for the safe use of forced unwrapping")
                }
            }
            
        }
        .routerPreview(navigationTitle: "Location.Map Test", previewName: "Location.Map Test", titleDisplayMode:.inline)
    }
}


