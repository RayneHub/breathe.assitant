//
//  TabBarView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 04/06/2023.
//

import SwiftUI

// MARK: - TabBar

struct TabBar:View
{
    let icons=["house.fill", "pills.fill", "book.closed.fill", "gearshape.fill"]
    var body:some View
    {
        HStack{
            ForEach(0..<4, id:\.self)
            {
                number in
                Spacer()
                Button(action:{}, label:{Image(systemName: icons[number]).font(.title2).foregroundColor(.blue) })
                Spacer()
                
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
