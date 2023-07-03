//
//  ALF.Models.swift
//  Rayne Health
//
//  Created by Christopher Raven on 27/06/2023.
//

import SwiftUI

extension ALF
{
    struct Video
    {
        var id:String
        fileprivate var runTime: Int
        
        var timeString:String {
            if(runTime == 0 ){
                return "Dev.Error : Add Running Time";
            }
            return "* running time: \(runTime / 60) mins and \(runTime % 60) seconds"
        }
        
        
        
        init(id: String, runTime: Int) {
            self.id = id
            self.runTime = runTime
        }
        
        var View:YoutubeInlineControl {
            YoutubeInlineControl(videoID: id)
        }
        
    }
    
//    struct Page
//    {
//        var index:Int
//        var title:String
//        var about:String
//        
//        var video:ALF.Video? {
//            if(videoId == nil) {
//                return nil
//            }
//            else {
//                return ALF.Video(id: videoId!, runTime: seconds)
//            }
//        }
//        
//        var videoId:String?
//        var seconds:Int = 0
//        
//        var content:[[String]]? = nil
//        
//        var colors:[Color]=[.purple.opacity(0.3)]
//        var sectionTitle:[String]=["Video Contents"]
//    }
    
    
//    struct Pages{
//        struct KeepActive{
//            static subscript(_ idx: Int) -> some View {
//                let page = ALF.KeepActivePage(for: idx)
//                return ALF.PageView(page: page, content: ALF.SectionsControl(page: page))
//            }
//        }
//    }
//    
//    struct PageData{
//        // Substitute function until I can find out how to pass KeepActive Struct to access via its subscript
//        internal static func KeepActiveData(for idx:Int) -> Page {
//            return ALF.KeepActivePage(for: idx)
//        }
//        
//        struct KeepActive{
//            static subscript(_ idx: Int) -> Page {
//                return ALF.KeepActivePage(for: idx)
//            }
//        }
//    }
}
