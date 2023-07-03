//
//  Exercise.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/05/2023.
//
import SwiftUI

class group: Codable,Identifiable
{
	// Used to Describe a Rehab Location.
	class venue: Codable,Identifiable
	{
		class sessions:Codable,Identifiable
		{
			var day:UInt8;
			var start:String;
			var finish:String;
		}

		var name:String;
		var parking: String;
		
		
		var refreshmentType:UInt8;
		var map:UInt8?;
		var sessions:[sessions]
		
		var refreshments:String
		{
			switch(refreshmentType)
			{
				case 1:  return "This venue has refreshment facilities and you will be offered a hot drink to accompany the group discussion.";
				case 2:  return "This venue does not have hot refreshment facilities but cold water is avaialable.";
				default:  return "This venue does not have refreshment facilities. Please ensure you bring water with you."
			}
		}

	}
	
	
	// Used to Describe a TeamMember. Team Members can be a Nurse/HCA/Volunteer
	class teamMember: Codable,Identifiable
	{
		var name:String;
		var role: UInt8;
		var image:String;
		var text:[String];
	}
	
	class exercise: Codable,Identifiable
	{
		var name: String;
		var time: UInt;
		var guide: String;
	}
	
	var venue:venue;
	
	var groupLead: teamMember;
	var groupAssistant: teamMember;
	var volunteers:[teamMember];
	var exercises:[exercise];
	
}


