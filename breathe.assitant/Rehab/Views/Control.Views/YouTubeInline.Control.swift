//
//  YoutubeInlineControl.swift
//  Rayne Controls
//
//  Created by Christopher Raven on 23/06/2023.
//

import SwiftUI

import WebKit


struct YoutubeInlineControl: UIViewRepresentable {
    
    let videoID: String
    let configuration = WKWebViewConfiguration()
       
    func makeUIView(context: Context) -> WKWebView{
        configuration.allowsInlineMediaPlayback = true
        return WKWebView(frame: .zero, configuration: configuration)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context){
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
        else
        {
            return
        }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}



