////
////  ALF.PageData.swift
//  Rayne Health
////
////  Created by Christopher Raven on 24/06/2023.
////
//
//import SwiftUI
//extension ALF
//{
//    
//    internal static func KeepActivePage(for idx:Int) -> Page
//    {
//        switch idx
//        {
//        case 0: return Page(
//            index:0,
//            title: "Keep active programme",
//            about: "If you have a lung condition, being active can help to improve your quality of life and can also help you to manage your condition.",
//            videoId: nil,
//            
//            content:
//                [
//                   
//                    [
//                        "Before you start any exercise, check with your GP, Consultant, healthcare provider or respiratory team, that it’s safe for you to do so.",
//                        "You can also discuss with them the level of exercise that’s right for you.",
//                    ],
//                    
//                    [
//                        "Talk to your healthcare professional if exercise makes your chest feel tight or wheezy.",
//                        "You may find it beneficial to take a reliever inhaler 5-20 minutes before your exercise session, but you should discuss this with your healthcare professional first. "
//                    ],
//                    [
//                        "If you get any sudden chest pain or tightness.",
//                        "If you suddenly start feeling dizzy, nauseous, clammy, or cold.",
//                        "If you are feeling increasingly wheezy.",
//                        "If you get sudden sore joints or muscle weakness."
//                    ],
//                    [
//                        "If you are unsure if you should continue with an exercise routine/program you should seek advice from your gp, consultant or the respiratory team.",
//                        "If you needed to stop for any of the reasons above several times."
//                    ]
//                    
//                ],
//            colors: [.yellow.opacity(0.3), .gray.opacity(0.3), .red.opacity(0.3), .orange.opacity(0.3),  ],
//            sectionTitle: ["Before you start any exercise" , "Note:", "When to stop exercising?","When to seek advice" ]
//        )
//            
//            
//        case 1: return Page(
//            index:1,
//            title: "Exercise Levels",
//            about: "The programme is designed for people living with a  lung condition, and includes exercises at three levels.",
//            videoId: nil,
//            content: [
//                [
//                    "When you exercise, it’s important that you pick the level that’s right for you.",
//                    "This may change as you pratice and progress through this programme.",
//                    "The key thing is not to overdo it and to build up your strength and resilience slowly"
//                ],
//                [
//                    "For people who get short of breath during activities like showering, dressing and moving around their home."
//                ],
//                [
//                    "For people who get out of breath doing things like carrying light food shopping, mowing the lawn, and hoovering."]
//                ,
//                [
//                    "For people who feel short of breath after doing high-energy activities like walking up hills and carrying heavy food shopping."
//                ]
//            ],
//            colors: [.gray.opacity(0.3), .yellow.opacity(0.3),  .red.opacity(0.3), .blue.opacity(0.3)],
//            sectionTitle: ["Choosing the right Level", "Level 1","Level 2", "Level 3"]
//        )
//            
//        case 2: return Page(
//            index:2,
//            title: "Programme overview",
//            about: "This is an overview of the stay active exercise programme and how regular activity has helped Cathy.",
//            videoId: "OxR8kmlZU28",
//            seconds:  465 , //7:45
//            content:[
//                [
//                    "How being active in your own home can help you.",
//                    "How to find the right level of activity for you before you start.",
//                    "Using these exercises after pulmonary rehabilitation.",
//                    "Current recommendations on how active we should be.",
//                    "An overview of the other parts of this exercise programme."
//                ]
//            ],
//            colors: [.purple.opacity(0.3)]
//        )
//            
//        case 3: return Page(
//            index:3,
//            title:"Exercising safely",
//            about: "From warming up correctly and what clothes to wear, to keeping your inhaler close and exercising at your level, this video shares how to exercise safely.",
//            videoId: "JDWlcvLGw_A",
//            seconds:  129, //2:09
//            content: [
//                [
//                    "Start slowly and gradually build up your strength and resilience.",
//                    "Warm up before and cool down after exercising.",
//                    "Carry any reliever, inhaler or GTN spray that you normally use and use it as required when excercising.",
//                    "Wear loose, comfortable clothing and supportive non-slip shoes, like trainers.",
//                    "Drink plenty of water and wait for at least an hour after eating before you exercise.",
//                    "Use oxygen (if you normally have it) at your regular setting when exercising.",
//                    
//                ],
//                [
//                    "Talk to your healthcare professional if exercise makes your chest feel tight or wheezy.",
//                    "You may find it beneficial to take a reliever inhaler 5-20 minutes before your exercise session, but you should discuss this with your healthcare professional first. "
//                ],
//                [
//                    "If you get any sudden chest pain or tightness.",
//                    "If you suddenly start feeling dizzy, nauseous, clammy, or cold.",
//                    "If you are feeling increasingly wheezy.",
//                    "If you get sudden sore joints or muscle weakness."
//                ],
//                [
//                    "If you are unsure if you should continue with an exercise routine/program you should seek advice from your gp, consultant or the respiratory team.",
//                    "If you needed to stop for any of the reasons above several times."
//                ]
//            ],
//            colors: [.purple.opacity(0.3), .orange.opacity(0.3), .gray.opacity(0.3),  .red.opacity(0.5)],
//            sectionTitle: ["Exercise safely","Note:","When to stop exercising?","When to seek advice?"]
//        )
//            
//            
//        case 4: return Page(
//            index:4,
//            title:"Managing breathlessness",
//            about:"It’s normal to get out of breath when you exercise. This video shows you ways to take control when that happens.",
//            videoId: "c4RljKVVLgg",
//            seconds:  487 , //8:07
//            content: [
//                [
//                    "Examples of breathing control.",
//                    "Breathing techniques such as pursed-lips breathing, relaxed deep breathing, blow as you go and paced breathing.",
//                    "Helpful positions that you can try to ease your breathlessness."
//                ]
//            ]
//        )
//            
//        case 5: return Page(
//            index:5,
//            title:"Setting yourself goals",
//            about:"This video explains how to set yourself exercise goals to help track your progress.",
//            videoId: "QekAZ_df4FY",
//            seconds:  137 , //2:17
//            content:[
//                [
//                    "A good way to motivate yourself to exercise and get the benefit of it is to think about what matters to you and how exercise can help you reach those goals. It also helps to track your progress. Record your progress using our exercise handbook. "
//                ]
//            ],
//            sectionTitle: ["BETTER VOD Description"]
//        )
//            
//        case 6: return Page(
//            index:6,
//            title:"Warm up",
//            about:"Before doing any exercise, always remember to warm up first. This is important to get you ready for exercise and prevent injury",
//            videoId: "-Ow0bZMXQHk",
//            seconds: 475 , //7:55
//            content:[
//                [
//                    "Geoff, Yvonne, and Mick do 11 exercises to warm up at their own pace",
//                    "Julie demonstrates how to warm up before you exercise so that you gently prepare your joints, muscles, and heart.",
//                    "Julie explains the 3 levels of warm up exercise and why it’s important that you pick the level that’s right for you."
//                ]
//            ],
//            sectionTitle: ["About this Video"]
//        )
//            
//        case 7: return Page(
//            index:7,
//            title:"Strength exercises",
//            about:"Strengthening (resistance) exercises help you develop stronger muscles. In this video, we show you some strengthening exercises you can do at home.",
//            videoId: "ThqXqDL6YqI",
//            seconds:  2007 , //33:27
//            content:[
//                [
//                    "Geoff, Yvonne, and Mick do exercises to strengthen their muscles. Julie reminds them to use breathing techniques.",
//                    "They repeat each exercise 10 times – that’s one set. Depending on their fitness level, they do 1, 2 or 3 sets. Some of the exercises use weights or resistance bands.",
//                ]],
//            sectionTitle: ["About this Video"]
//        )
//            
//        case 8: return Page(
//            index:8,
//            title:"Aerobic exercises",
//            about:"In this video, we show you some aerobic exercises to work your heart and lungs.",
//            videoId: "XV8Gf6D39jo",
//            seconds:  450 , //7:30
//            content: [
//                [
//                    "Julie and Mick show you aerobic exercises to work your heart and lungs. These exercises are suitable for everyone.",
//                    "The video also explains the talk test as a way to work out if you’re working too hard or not hard enough.",
//                    "This video contains 5 minutes of aerobic exercise. You may want to do this just once or watch it more times to build up the length of time you exercise.",
//                ],
//                [
//                    "It’s recommended we all do 150 minutes of this sort of exercise every week. That’s about 20 minutes a day – but doing even 10 minutes in one session counts. To get fitter and feel the benefits, you should feel only moderately breathless while you do these exercises. "
//                ]
//            ],
//            colors: [.purple.opacity(0.3), .orange.opacity(0.3), .gray.opacity(0.3),  .red.opacity(0.5)],
//            sectionTitle: ["About this Video","Note:"]
//            
//        )
//            
//        case 9: return Page(
//            index:9,
//            title:"Cool Down and stretching",
//            about:"After any form of exercise, you should complete a cool down. Cool down exercises and stretches help you recover after exercise.",
//            videoId: "nuFvHzPrPDY",
//            seconds:  446 , //7:26
//            content: [
//                [
//                    "This video takes you through a series of stretches to cool down and gradually bring your breathing, heart rate and blood pressure back to their normal levels. It will also help you to avoid any muscle soreness.",
//                    "Geoff, Yvonne, Mick, and Julie demonstrate the stretches, holding each one for 20 seconds."],
//                [
//                    "After exercise, it’s important to stretch and cool down!"
//                ]
//                
//            ],
//            colors: [.purple.opacity(0.3), .orange.opacity(0.3), .gray.opacity(0.3),  .red.opacity(0.5)],
//            sectionTitle: ["About this Video","Note:"]
//        )
//            
//        default:
//            return Page(
//                index:10,
//                title:"Next steps",
//                about:"This video explains how to build activity into your daily life and keep up your exercise routine",
//                videoId: "yqIdtKnl7Ro",
//                seconds:  167 , //2:47
//                content:[
//                    [
//                        "This video gives you a reminder of how often you should aim to exercise. It also gives you  ideas for how to build activity into your daily life and keep up your exercise routine, including getting on a pulmonary rehabilitation course or joining an exercise class. This video is 2 minutes and 48 seconds long.",
//                    ]
//                ],
//                colors: [.purple.opacity(0.3), .orange.opacity(0.3), .gray.opacity(0.3),  .red.opacity(0.5)],
//                sectionTitle: ["About this Video","Note:"]
//            )
//        }
//    }
//    
//    
//}
//
