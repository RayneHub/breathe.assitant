//
//  RehabExercises.swift
//  Rayne Health
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

let Guides =
[
    "Walking":
        "A nice gentle walk building up to good pace.\n\nYou should aim to be 3 on the borg scale. \n\nYour heart rate should not exceed 120 bpm and your oxygen should not fall below 88 (Except for patients with pulmanory fibrosis)\n\nIf you have known heart problems then you must not stop at the end of this timer and should move slowly between excercises.",
    "Wall Push Offs" : "",
    "Heel Raises" : "",
    "Side Arm Raises" : "",
    "Squats" : "",
    "Bicep Curls" : "",
    "Sit to Stand" : "",
    "Star Jacks" : "",
    "Upright Row" : "",
    "Ball Throw" : "",
    "Marching": ""
]

let defaultExercises:[exercise] =
[
    exercise( name: "Walking", time: 4),
    exercise( name: "Wall Push Offs", time: 3),
    exercise( name: "Heel Raises", time: 3),
    exercise( name: "Side Arm Raises", time: 3),
    exercise( name: "Squats", time: 3),
    exercise( name: "Bicep Curls", time: 3),
    exercise( name: "Sit to Stand", time: 3),
    exercise( name: "Star Jacks", time: 3),
    exercise( name: "Upright Row", time: 3),
    exercise( name: "Ball Throw", time: 3),
    exercise( name: "Marching", time: 4),
]

let virtualExercises:[exercise] =
[
    exercise( name: "Walking", time: 4),
    exercise( name: "Wall Push Offs", time: 3),
    exercise( name: "Heel Raises", time: 3),
    exercise( name: "Side Arm Raises", time: 3),
    exercise( name: "Squats", time: 3),
    exercise( name: "Bicep Curls", time: 3),
    exercise( name: "Sit to Stand", time: 3),
    exercise( name: "Star Jacks", time: 3),
    exercise( name: "Upright Row", time: 3),
    exercise( name: "Ball Throw", time: 3),
    exercise( name: "Marching", time: 4),
]

struct exercise: Hashable, Identifiable
{
    // MARK: Identifier
    let id:UUID = UUID()
   
    var name: String
    var time: UInt;
    
    var guide: String {
        guard let res = Guides[name]
        else {return "Todo : Add Guide"}
        return res
    }
}
