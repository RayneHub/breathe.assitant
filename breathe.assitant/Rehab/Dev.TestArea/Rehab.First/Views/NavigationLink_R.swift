//
//  Rayne.Link
//  Rayne Health
//
//  Created by Christopher Raven on 22/05/2023.
//

import SwiftUI

extension Rayne
{
    public struct Link<Label, Destination> : View where Label : View, Destination : View
    {
        
        @ViewBuilder var label: Label
        @ViewBuilder var destination: Destination
        
        var body: some View
        {
            NavigationLink( destination: {  destination }, label: { label } )
        }
    }
    
}

