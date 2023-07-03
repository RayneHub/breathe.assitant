//
//  Route.Viewbuilder.swift
//  Rayne Health
//
//  Created by Christopher Raven on 16/06/2023.
//

import SwiftUI

extension navigationManager: View
{
    var body: some View
    {
        computedView.navigationBarHidden(true)
    }
    
    @ViewBuilder var computedView: some View
    {
        switch self
        {
            
        case .books:
             Text("book view")
            
        case .mapView(let venue):
            
            if(venue != .Virtual)
            {
                 venue.location!.mapBuilder()
            }
            else
            {
                // Presents an Error View when Location calls Map or Pin when no Assocaited Arrary Element exists
                 ErrorData(title:"Developer Oopsie", message:"Called venues.Virtual.location.map or venues.Virtual.location.pin on a Virtual Clinic.\n\nCannot show abstract locations in the real world").errorView()
            }
            
        case .exercise:
             Text("exercise view")
            
        case .exercises(let venue):
             ExercisesViewer(exercises:venue.exercises)
            //ExercisesViewer()
            
            //case .venue(let venue):
            //    venue.location.map()
            
        case .ALFKeepActive(let index):
            
            switch index{
            case 0:
                 KeepActiveProgramme()
            case 1:
                let _ = UserDefaults.standard.set(1, forKey: "ALF.Begin")
                 ALF_KAP_Begin()
                
            case 2:
                let _ = UserDefaults.standard.set(1, forKey: "ALF.Level")
                 ALF_KAP_Level()
                
            case 3: ALF_KAP_Overview()
                
            case 4: ALF_KAP_Safety()
                
            case 5: ALF_KAP_Breathlesness()
                
            case 6: ALF_KAP_Goals()
                
            case 7: ALF_KAP_WarmUp()
                
            case 8: ALF_KAP_Strength()
                
            case 9: ALF_KAP_Aerobic()
                
            case 10: ALF_KAP_CoolDown()
                
            case 11: ALF_KAP_NextSteps()
                
            default:
                 ErrorData(title:"Developer Oopsie", message:"Tried navigating to an ivalid location and index using .ALFKeepActive(index)").errorView()
            }
            
        }
    }
}
