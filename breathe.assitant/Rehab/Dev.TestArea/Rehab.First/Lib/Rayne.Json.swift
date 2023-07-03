//
//  ExcerciseModel.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/05/2023.
//

import SwiftUI

extension Rayne
{
    struct Json
    {
        static func load<T: Decodable>(_ filename: String) -> T
        {
            let data: Data
            
            guard let path = Bundle.main.path(forResource: filename, ofType: "json")
            else
            {
                print("Cannot find \(filename)")
                fatalError("Cannot find \(filename)")
            }
            
            let url = URL(fileURLWithPath: path)
            
            do
            {
                data = try Data(contentsOf: url)
            }
            catch
            {
                print("Cannot load \(filename):\n\(error)")
                fatalError("Cannot load \(filename):\n\(error)")
            }
            do
            {
                let decoder = JSONDecoder()
                let format = DateFormatter()
                format.dateFormat = "dd-mm-yy"
                decoder.dateDecodingStrategy = .formatted(format)
                return try decoder.decode(T.self, from: data)
            }
            catch
            {
                print("Cannot parse \(filename): \(T.self):\n\(error)")
                fatalError("Cannot parse \(filename): \(T.self):\n\(error)")
            }
        }
        
    }
}



