//
//  SubNavigationBar.swift
//  Rayne Health
//
//  Created by Christopher Raven on 05/06/2023.
//

import SwiftUI

struct SubNavBar: View
{
    var body: some View
    {
        HStack
        {
            VStack(alignment: .leading, spacing: 0)
            {
                Text("RAYNE HEALTH").font(.title3).fontWeight(.semibold).padding(.vertical,2)
                Text(Navigator.subCaption).font(.subheadline)
            }
            .onTapGesture
            {
                Navigator.animationTimer=0
                Navigator.subtitle="pulminary rehabilitation"
                Navigator.subCaption="Test"
                Navigator.global.navigate(RootPage_R());
            }
            
            Spacer()
            
            Button("Menu")
            {
                Navigator.global.navigate(ExcercisesView_R(exGroup: .Braintree));
            }
            .padding(8)
            .frame(maxWidth:90)
            .background(MidBlue)
            .cornerRadius(5)
        }
        Spacer()
    }
}

