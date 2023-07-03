//
//  ExcercisesView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/05/2023.
//

import SwiftUI
import MapKit

struct IdentifiablePlace: Identifiable
{
	let id: UUID
	let location: CLLocationCoordinate2D
	init(id: UUID = UUID(), lat: Double, long: Double) {
		self.id = id
		self.location = CLLocationCoordinate2D(
			latitude: lat,
			longitude: long)
	}
}

struct clinic_R: View
{
	var group:group;
	let place: IdentifiablePlace = IdentifiablePlace(lat: 51.87826759392027, long: 0.5704647576703726)
	
	@State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.87826759392027, longitude: 0.5704647576703726), latitudinalMeters: 300, longitudinalMeters: 300)
	
    init(exGroup: Rayne.ExerciseGroups)
	{
		self.group = exGroup.Data
	}
	
	var body: some View
	{
		VStack(alignment: .leading, spacing:0.0)
			{
				Text(group.venue.name).font(.body)
					Text("Group Lead : \(group.groupLead.name)");
					Text("Group Lead : \(group.groupAssistant.name)");
					ForEach(group.volunteers)
					{
						volunteer in
						Text("Volunteers : \(volunteer.name)")
					}
			}
			.frame(width: .infinity)
	
			
			VStack()
			{
				Text("Address").font(.body)
				VStack(alignment: .leading)
				{
					Text("Hay Lane South").frame(width: .infinity)
					Text("Braintree").frame(width: .infinity)
					Text("Essex").frame(width: .infinity)
					Text("CM7 3DY").frame(width: .infinity)

					Map(coordinateRegion: $region , annotationItems: [place]){ place in MapMarker(coordinate: place.location,
																								  tint: Color.purple)
					}
					.frame(width: .infinity, height: 200)
					Button("Open in Maps and start navigation")
					{
						let url = URL(string: "maps://?saddr=&daddr=\(51.87826759392027),\(0.5704647576703726)")

						if UIApplication.shared.canOpenURL(url!) {
							UIApplication.shared.open(url!, options: [:], completionHandler: nil)
						}
					}
				}.font(.callout);
			}

			VStack(alignment: .leading)
			{
				Text("Sessions").font(.body)
				VStack(alignment: .leading)
				{
					HStack
					{
                        Text(Rayne.WeekDay(group.venue.sessions[0].day))
						Text(group.venue.sessions[0].start)
						Text(group.venue.sessions[0].finish)
					}.frame(width: .infinity)

					HStack
					{
                        Text(Rayne.WeekDay(group.venue.sessions[1].day))
						Text(group.venue.sessions[1].start)
						Text(group.venue.sessions[1].finish)
					}.frame(width: .infinity)
				}
			}
			.font(.callout)
			.frame(width: .infinity)

			VStack(alignment: .leading)
			{
				Text("Parking")
				Spacer(minLength: 12)
				Text(group.venue.parking).frame(width: .infinity)
			}
			.font(.callout)
			.frame(width: .infinity)


			Spacer(minLength: 12)
			VStack(alignment: .leading)
			{
				Text("Refreshments")
				Spacer(minLength: 12)
				Text(group.venue.refreshments)
			}
			.font(.callout)
			.frame(width: .infinity)

		}
		//.listStyle(.grouped)
		//.padding(.top, -30)
		
}


struct ExerciseList_R: View
{
	var group:group;
	let place: IdentifiablePlace = IdentifiablePlace(lat: 51.87826759392027, long: 0.5704647576703726)
	
	@State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.87826759392027, longitude: 0.5704647576703726), latitudinalMeters: 300, longitudinalMeters: 300)
	
	var body: some View
	{
        Text("Excercise")
		List()
		{

			Section
			{
				Text("Warmup")

				ForEach(group.exercises)
				{
					Exercise in
					Text(Exercise.name).font(.headline)
				}

				Text("Cooldown")
			}.navigationTitle("Text")
		}
		.listStyle(.grouped)
		.padding(.top, -30)
	}
	
    init(exGroup: Rayne.ExerciseGroups)
	{
		self.group = exGroup.Data
	}
}

struct ExerciseList2_Previews: PreviewProvider
{
	static var previews: some View
	{
		ExerciseList_R(exGroup: .Braintree)
	}
}

struct ExerciseList_Previews: PreviewProvider
{
	static var previews: some View
	{
		
					ScrollView{
						List()
						{
							Text("group.venue.name").font(.body)
							Text("Group Lead : \("group.groupLead.name")");
							Text("Group Lead : \("group.groupAssistant.name")");
							Text("Volunteers : \("volunteer.name")")
							Text("group.venue.name").font(.body)
							Text("Group Lead : \("group.groupLead.name")");
							Text("Group Lead : \("group.groupAssistant.name")");
							Text("Volunteers : \("volunteer.name")")
							Text("group.venue.name").font(.body)
						}
						List()
						{
							Text("group.venue.name").font(.body)
							Text("Group Lead : \("group.groupLead.name")");
							Text("Group Lead : \("group.groupAssistant.name")");
							Text("Volunteers : \("volunteer.name")")
							Text("group.venue.name").font(.body)
							Text("Group Lead : \("group.groupLead.name")");
							Text("Group Lead : \("group.groupAssistant.name")");
							Text("Volunteers : \("volunteer.name")")
							Text("group.venue.name").font(.body)
						}
		
		
						VStack(alignment: .leading, spacing:0.0)
						{
							Text("group.venue.name").font(.body)
							Text("Group Lead : \("group.groupLead.name")");
							Text("Group Lead : \("group.groupAssistant.name")");
							Text("Volunteers : \("volunteer.name")")
						}
						.frame(width: .infinity, height: .infinity, alignment: .leading)
						//}
		
					}

	}
	
}




