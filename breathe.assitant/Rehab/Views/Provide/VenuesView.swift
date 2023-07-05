//
//  Venue.swift
//  Rayne Health
//
//  Created by Christopher Raven on 18/06/2023.
//

import SwiftUI


struct VenuesView: View {
    
    var body: some View
    {
        List {
            ForEach(venues.mapList, id: \.name)
            {
                item in
                Section(item.name)
                {
                    
                    NavigationLink("Exercises", value: navigationRoutes.exercises(location: item))
                    NavigationLink("Details", value: navigationRoutes.mapView(location: item))
                    Button("Set as Default"){}
                    Text("FacilitesView (Drinks/Parking etc)")
                }

            }
            Section("Virtual Rehab")
            {
                
                NavigationLink("Exercises", value: navigationRoutes.mapView(location: .Virtual))
                //NavigationLink("Staff & volunteers", value: Route.mapView(location: item))
                NavigationLink("Clinic Details", value: navigationRoutes.mapView(location: .Virtual))
                Button("Set as Default"){}
            }
        }
        .routerPreview(navigationTitle: "Venues", previewName: "Venues", titleDisplayMode:.inline)
    }
}

struct Venues_Previews: PreviewProvider {
    static var previews: some View
    {
        VenuesView().previewDisplayName("Venues")
    }
}
