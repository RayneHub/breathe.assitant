//
//  TestingMain.swift
//  breathe.assitant
//
//  Created by Christopher Raven on 03/07/2023.


import SwiftUI

struct ALF_KA_Previews: PreviewProvider {
    @StateObject var navigator: NavigationRouter = NavigationRouter()
    
    static var previews: some View {
        KeepActiveProgramme().routerPreview(navigationTitle: "", previewName: "Host", navigationBarHidden: true)
    }
}
