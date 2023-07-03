//
//  ContentView.swift
//  Rayne Health
//
//  Created by Christopher Raven on 07/05/2023.
//

import SwiftUI

struct InitialTestView: View
{
    var body: some View
    {
        NavigationView
        {
			
            List{
				
                Section
                {
                    Image("provide.logo")
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                    
                    Text("COPD Rehab")
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                }
                
				//ExerciseList()
				
                Section
                {
                    Rayne.Link(
                        label:{Label("Work Folder", systemImage: "folder")},
                        destination:
                        {
                            TimerView(minutes:1)
                        })
                }
                
                Section
                {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            Image("provide.logo")
                                .foregroundColor(Color.green)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                            
                            Spacer(minLength: 40)
                            Image("provide.logo")
                                .foregroundColor(Color.orange)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                            
                            Spacer(minLength: 40)
                            Image("provide.logo")
                                .foregroundColor(Color.pink)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                        }
                    }
                    .frame(height: 150.0, alignment: .center)
                }
                
                Section
                {
                    NavigationLink("Warm Up", destination: Excercise_R(Title: "Walking",  Time: 5, Guide: "Warm up advice. "));
                    NavigationLink("Walking", destination: Excercise_R(
                        Title: "Walking",
                        Time: 4,
                        Guide: "A nice gentle walk building up to good pace.\n\nYou should aim to be 3 on the borg scale. \n\nYour heart rate should not exceed 120 bpm and your oxygen should not fall below 88 (Except for patients with pulmanory fibrosis)\n\nIf you have known heart problems then you must not stop at the end of this timer and should move slowly between excercises."));
                }
                
                Section
                {
                NavigationLink("Wall Step Ups", destination: Excercise_R(Title: "Wall Step Ups", Time:3, Guide: "Advice...").navigationBarBackButtonHidden(true));
                NavigationLink("Wall Push Offs", destination: Excercise_R(Title: "Wall Push Offs", Time:3, Guide: "Advice..."));
                NavigationLink("Heel Raises", destination: Excercise_R(Title: "Heel Raises", Time:3, Guide: "Advice... "));
                NavigationLink("Side Arm Raises", destination: Excercise_R(Title: "Side Arm Raises", Time:3, Guide: "Advice..."));
                NavigationLink("Squats", destination: Excercise_R(Title: "Squats", Time:3, Guide: "Advice..."));
                NavigationLink("Bicep Curls", destination:Excercise_R(Title: "Bicep Curls", Time:3, Guide: "Advice..."));
                NavigationLink("Sit to Stand", destination: Excercise_R(Title: "Sit to Stand", Time:3, Guide: "Advice..."));
                NavigationLink("Star Jacks", destination: Excercise_R(Title: "Star Jacks", Time:3, Guide: "Advice..."));
                NavigationLink("Upright Row", destination: Excercise_R(Title: "Upright Row", Time:3, Guide: "Advice..."));
                }
                
                Section
                {
                NavigationLink("Ball Throw", destination:Excercise_R(Title: "Ball Throw", Time:3, Guide: "Advice..."));
                NavigationLink("Marching", destination: Excercise_R(Title: "Marching", Time:3, Guide: "Advice..."));
                NavigationLink("Cool Down", destination: Excercise_R(Title: "Cool Down", Time:5, Guide: "Advice..."));
                    
                }
                
                Section
                {
                    NavigationLink("Timer 1", destination: TimerView(minutes:1));
                    NavigationLink("Timer 3", destination: TimerView(minutes:3));
                    NavigationLink("Timer 4", destination: TimerView(minutes:4));
                }
                
                Section
                {
                    Text("Team");
                    Text("Contacts");
                }
                
                Section
                {
                    Text("Books");
                    Text("Talks");
                }
                
            }
            
        }
        
    }
}
    
    struct Excercise_R: View
    {
        var Title:String = "Walking";
        var Time:UInt=4;
        var Guide:String = "A nice gentle walk building up to  a march. \n\nYou should aim to be 3 on the borg scale. \n\n"
        
        + "Your heart rate should not exceed 120 bpm and your oxygen should not fall below 88 (Except for patients with pulmanory fibrosis)\n\n"
        + "If you have known heart problems then you must not stop at the end of this timer and should move slowly between excercises.";
        
        
        
        var body: some View {
            
            
            List{
                
                Section
                {
                    Image("provide.logo")
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                    
                    Text("COPD Rehab")
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                }
                
                Section
                {
                    
                    Text("\(Title)").font(.title) .frame(maxWidth: .infinity, alignment: .leading)
                    Text("\(Guide)")
                        .font(.title3)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                Section
                {
                    TimerView(minutes:Time)
                }
                
                
            }
            
            .listSectionSeparatorTint(.white)
            .listStyle(.grouped)
            
        }
    }




struct ContentViewOld_Previews: PreviewProvider
{
    static var previews: some View
    {
        InitialTestView()
    }
}

struct ExcerciseNavigation_R: View
{
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section
                {
                    Image("provide.logo")
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)

                    Text("COPD Rehab")
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                }

                Section
                {
                    NavigationLink("Warm Up", destination: Excercise_R(Title: "Walking",  Time: 5, Guide: "Warm up advice. "));
                    NavigationLink("Walking", destination: Excercise_R(
                        Title: "Walking",
                        Time: 4,
                        Guide: "A nice gentle walk building up to  a march.\n\nYou should aim to be 3 on the borg scale. \n\nYour heart rate should not exceed 120 bpm and your oxygen should not fall below 88 (Except for patients with pulmanory fibrosis)\n\nIf you have known heart problems then you must not stop at the end of this timer and should move slowly between excercises."));
                }

                Section
                {

                    NavigationLink("Wall Step Ups", destination: Excercise_R());
                    NavigationLink("Wall Push Offs", destination: Excercise_R());
                    NavigationLink("Heel Raises", destination: Excercise_R());
                    NavigationLink("Side Arm Raises", destination: Excercise_R());
                    NavigationLink("Squats", destination: Excercise_R());
                    NavigationLink("Bicep Curls", destination: Excercise_R());
                    NavigationLink("Sit to Stand", destination: Excercise_R());
                    NavigationLink("Star Jacks", destination: Excercise_R());
                    NavigationLink("Upright Row", destination: Excercise_R());
                }

                Section
                {
                    NavigationLink("Ball Throw", destination: Excercise_R());
                    NavigationLink("Marching", destination: Excercise_R());
                    NavigationLink("Cool Down", destination: Excercise_R());

                }
            }
            
        }
        
    }
}
