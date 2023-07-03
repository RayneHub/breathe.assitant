//
//  User.swift
//  Rayne Health
//
//  Created by Christopher Raven on 15/05/2023.
//

import Foundation

struct User_R: Identifiable
{
	var id = UUID()
	
	//User metrics
	var height: UInt16 = 170;
	var age: UInt16 = 1960;
	var weight:UInt16 = 80;
	
	var firstStart: Bool = true
	var lastVersion: String = "0.0.8"
	
	// Saved Workouts
	//var workouts: [Workout] = []
	
	/// Age calculation
//	mutating func calculateAge() -> Int
//	{
//		let currentYear = Calendar.current.component(.year, from: Date())
//		let born = age
//		return currentYear - born
//	}
	
}
