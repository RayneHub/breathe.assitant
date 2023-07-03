//
//  Excercises.swift
//  Rayne Health
//
//  Created by Christopher Raven on 19/05/2023.
//

import SwiftUI
//import MapKit

struct ExcercisesView_R: View {
	
	var group:group;
    init(exGroup: Rayne.ExerciseGroups)
	{
		self.group = exGroup.Data
        Navigator.scrollDisabled = false;
        Navigator.subCaption = "Braintree: Excercises"
        
	}
	
	var body: some View
	{
		SectionView_R(
            BackGround : .white,
            ForeGround: .black.opacity(0.7),
			caption:{
				SectionCaption_R("Braintree : Excercises")
			},
			content:
				{
					Text("WarmUp").font(.headline).foregroundColor(.red).padding(.vertical, 10)
					
					Text("Legs").padding(.vertical, 5)
					Text("Torso").padding(.vertical, 5)
					Text("Arms").padding(.vertical, 5)
					
					Text("Exercise").font(.headline).foregroundColor(.orange).padding(.vertical, 10)
					
					ForEach(group.exercises)
					{
						Exercise in
						//Text(Exercise.name)
						Text("\(Exercise.time):00   \(Exercise.name)").padding(.vertical, 5)
					}
					
					Text("Cooldown").font(.headline).foregroundColor(.green).padding(.vertical, 10)
					
					Text("Arms").padding(.vertical, 5)
					Text("Torso").padding(.vertical, 5)
					Text("Legs").padding(.vertical, 5)
					
					.padding(.bottom, 10)
				}
		)

		//.padding(.top, -30)
        
       
	}
    
}

struct ExcercisesViewSmall_R: View {
	
	var group:group;
	
	var warmup:UInt=5;
	var exerciseTime:UInt {return group.exercises.map{$0.time}.reduce(0, +)}
	var restTime:UInt {return UInt(group.exercises.count)}
	var coolDown:UInt=5;
	
    init(exGroup: Rayne.ExerciseGroups)
	{
		self.group = exGroup.Data
	}
	
	
	var body: some View
	{
		SectionView_R(
            BackGround : .white,
            ForeGround: .yellow,
			caption:
                {
				SectionCaption_R("Excercises (Braintree)")
                },
			content:
				{
					Text("Warmup: \(warmup) Minutes").padding(.vertical, 5)
					Text("Exercise Time: \(exerciseTime)").padding(.vertical, 5)
					Text("Rest Time: \(restTime)").padding(.vertical, 5)
					Text("Cool Down: \(coolDown)").padding(.vertical, 5)
				}
		)
		
		.padding(.top, -30)
	}
	
}
struct EPSmall_Previews: PreviewProvider {
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			Spacer()
			ExcercisesViewSmall_R(exGroup: .Braintree).padding()
			Spacer()
		}
		.background(Rayne.Colours.BackgroundLight)
		
	}
}

struct Excercises_Previews: PreviewProvider {
	static var previews: some View
	{
		VStack(spacing: 0)
		{
			Spacer()
			ExcercisesView_R(exGroup: .Braintree).padding()
			Spacer()
		}
		.background(Rayne.Colours.BackgroundLight)
		
	}
}
