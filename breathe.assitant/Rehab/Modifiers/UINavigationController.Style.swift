//
//  SwiftUIView22.swift
//  Rayne Rehab
//
//  Created by Christopher Raven on 02/07/2023.
//

import SwiftUI

extension UINavigationController {
    override open func viewDidLoad()
    {
        super.viewDidLoad()
        
        let standard = UINavigationBarAppearance()
        standard.backgroundColor = UIColor(.white.opacity(0.5)) //When you scroll or you have title (small one)
        
        let compact = UINavigationBarAppearance()
        compact.backgroundColor = .green //compact-height
        
        let scrollEdge = UINavigationBarAppearance()
        scrollEdge.backgroundColor =  UIColor(ALF.Purple) //.blue //When you have large title
        
        //navigationBar.standardAppearance = standard
        // navigationBar.compactAppearance = compact
        // navigationBar.scrollEdgeAppearance = scrollEdge
        
        UIScrollView.appearance().backgroundColor =  UIColor(ALF.Background)
    }
}
