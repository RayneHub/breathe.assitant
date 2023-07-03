//  Rayne Health
//
//  Created by Christopher Raven on 07/05/2023.
//

import SwiftUI

// MARK: - RootPage
struct RootPage_R: View
{
    var body: some View
    {
        VStack(alignment:.leading, spacing: 25)
        {
            ActivityViewSmall_R()
            BookViewSmall_R()
            VenuesViewSmall_R()
        }
    }
    
    init()
    {
        Navigator.scrollDisabled=true;
        Navigator.subCaption="Home Page"
    }
}

