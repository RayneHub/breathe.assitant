//
//  ExercisesView.swift
//  Rehab
//
//  Created by Christopher Raven on 22/06/2023.
//

import SwiftUI

struct ExercisesViewer: View {
    var exercises:[exercise]
    var body: some View {
        
        List
        {
            Section("Warmup")
            {
                Text("Head").foregroundColor(.cyan)
                Text("Torso").foregroundColor(.cyan)
                Text("Legs").foregroundColor(.cyan)

            }
            Section("Excercises")
            {
                ForEach(exercises)
                {
                    Exercise in
                    Text(Exercise.name)
                }
                Text("Cooldown").foregroundColor(.cyan)
            }
            
            Section("Cooldown")
            {
                Text("Head").foregroundColor(.cyan)
                Text("Torso").foregroundColor(.cyan)
                Text("Legs").foregroundColor(.cyan)
            }

            .navigationTitle("Exercises.Preview")
        }
        .listStyle(.grouped)
        .padding(.top, 0)
    }
}


struct ContentViewOld: View {
    @State private var selectedImage: String?
    @Namespace private var hero

    let images: [String] = [
        "pencil",
        "trash",
        "lock.doc",
        "person",
        "figure.run"
    ]

    var body: some View {
        NavigationStack {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
                ForEach(images, id: \.self) { image in
                    Image(systemName: selectedImage == image ? "" : image)
                        .resizable()
                        .scaledToFit()
                        .background(Material.regular)
                        .matchedGeometryEffect(id: image, in: hero)
                        .onTapGesture {
                            selectedImage = image
                        }
                }
            }
            .overlay {
                if let image = selectedImage {
                    Image(systemName: image)
                        .resizable()
                        .scaledToFill()
                        .background(Material.thin)
                        .matchedGeometryEffect(id: image, in: hero)
                        .animation(.easeInOut, value: selectedImage)
                        .onTapGesture {
                            selectedImage = nil
                        }
                }
            }
        }
        .animation(.default, value: selectedImage)
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesViewer(exercises:venues.Braintree.exercises)
            .routerPreview(navigationTitle: "Location.Map", previewName: "Location.Map", titleDisplayMode:.inline)
        
        ContentView()
    }
}
