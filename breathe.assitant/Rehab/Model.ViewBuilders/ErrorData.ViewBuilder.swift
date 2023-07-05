//
//  ErrorData.ViewBuilder.swift
//  Rayne Health
//
//  Created by Christopher Raven on 20/06/2023.
//

import SwiftUI


extension ErrorData {
    @ViewBuilder func errorView() -> some View {
            VStack
            {
                Spacer()
                RoundIconControl(fgColor: .blue, borderColor: .gray)
                VStack()
                {
                    Text(self.title).padding(.bottom, 8)
                    Divider().padding(.bottom, 12);
                    Text(self.message).padding(.bottom, 8);
                }.tipView(header: "")
            }
            .padding(50)
            .background(.black)
            .frame(maxHeight: .infinity)
    }
}
