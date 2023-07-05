//
//  Navigation.Router.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

final class NavigationRouter: ObservableObject {
    
    // MARK: Navigation Path Array with Chapter Manager
    
    @Published var navigationPath = [navigationRoutes](){
        willSet(updatedArray)
        {
            let lastIndex = updatedArray.count > 0 ? updatedArray.count - 1 : 0
            let addChapterMarker:Bool = updatedArray.last?.isChapter ?? false && lastChapterIndex != lastIndex
            let removeChapterMarker:Bool = lastIndex < lastChapterIndex
            
            if(addChapterMarker)
            {
                print("Adding Chapter")
                chapterMarkers.append(navigationPath.count)
            }
            else if (removeChapterMarker)
            {
                print("Removing Chapter")
                chapterMarkers.removeLast()
            }
        }
    }
    
    // MARK: Chapter Markers
    
    private var chapterMarkers:[Int] = []
    
    private var lastChapterIndex:Int {
        guard let chapterMarker = chapterMarkers.last else {
            return 0
        }
        return chapterMarker
    }
    
    // MARK: Navigation Functions
    
    func KeepActivePage(index idx:Int)
    {
        push(to: .ALFKeepActive(index: idx))
    }
    
    func push(to view: navigationRoutes)
    {
        navigationPath.append(view)
    }
    
    func goBack()
    {
        let lastIndex = navigationPath.count - 1
        if(lastIndex > 0)
        {
            _ = navigationPath.popLast()
        }
        else
        {
            navigationPath.removeAll()
        }
    }
    
    func reset()
    {
        chapterMarkers.removeAll()
        navigationPath.removeAll()
    }
    
    func resetChapter()
    {
        guard let chapterRoot = chapterMarkers.last else {
            return
        }
        
        let lastIndex = navigationPath.count - 1
        let qty = lastIndex - chapterRoot
        navigationPath.removeLast(qty)
        
    }
    
    func setStop(for stop:Int){
        chapterMarkers.append(stop)
    }
    
    
}



