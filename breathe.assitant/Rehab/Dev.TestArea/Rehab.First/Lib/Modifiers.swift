//  Rayne Health
//
//  Created by Christopher Raven on 07/05/2023.
//


import SwiftUI

extension Rayne {

struct TitleModifier: ViewModifier
    {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .default))
            .foregroundColor(Color.gray)
            .padding(8)
    }
}
}
struct BoxTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .default))
    }
}

struct BoxBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color(UIColor.secondarySystemFill))
            )
    }
}
