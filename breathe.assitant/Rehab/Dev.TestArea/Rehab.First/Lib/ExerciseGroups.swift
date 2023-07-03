//
//  SwiftUIView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/05/2023.
//

extension Rayne
{
    enum ExerciseGroups:String
    {
        case Braintree
        case Chelmsford
        case Maldon
        case Virtual
        case Witham
        
        func tostring () -> String {return self.rawValue}
        
        var Data: group { return Json.load(self.tostring())}
        //var E2: DataSource { return DataSource(self.tostring())}
    }
    
    enum carparkingType:UInt8
    {
        case none=0;
        case onsite=1;
        case limited=2;
        case disabled=3;

        //func tostring () -> String {return self.rawValue}
        //var E2: DataSource { return DataSource(self.tostring())}
    }

    /// Returns a weekday from a Unisgned Integer.
    /// Uint Type is used to avoid Checking that the value is not less than 0
    static func WeekDay(_ day:UInt8) ->String
    {
        switch day
        {
            case 1: return "Monday";
            case 2: return "Tuesday";
            case 3: return "Wednesday";
            case 4: return "Thursday";
            case 5: return "Friday";
            case 6: return "Saturday";
            default: return "Sunday"
        }
    }
}



/// We will be extending this in the near future to include further information about each group : For now Use ExerciseGroups.Exercises

//struct DataSource:RandomAccessCollection
//{
//	var startIndex: Int {return Exercises.startIndex}
//	var endIndex: Int {return Exercises.endIndex}
//
//	var Exercises: [Exercise] = [];
//	var count:Int { return Exercises.count }
//
//	init(_ filename: String)
//	{
//		self.Exercises = Json.load(filename);
//	}
//
//	subscript(index: Int) -> Exercise
//	{
//		return Exercises[index]
//	}
//}
