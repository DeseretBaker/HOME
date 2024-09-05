//
//  SpaceSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct SpaceSelectionView: View {
    var projectController: ProjectController = .shared
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    @Bindable var room: Room  // Use @Bindable to automatically update the view when the room changes

    var body: some View {
        NavigationView {
            VStack {
                if room.spaces.isEmpty {
                    Text("No spaces available in this room.")
                        .font(.headline)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                            ForEach(room.spaces) { space in
                                NavigationLink(destination: SpaceDetailView(space: space)) {
                                    SpaceCardView(space: space)  // Use the existing SpaceCardView
                                }
                            }
                        }
                        .padding()
                    }
                }
                
                // Add New Space Button
//                Button(action: addNewSpace) {
//                    HStack {
//                        Image(systemName: "plus")
//                        Text("Add New Space")
//                    }
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .shadow(radius: 5)
//                }
//                .padding()
            }
            .navigationTitle("Select a Space")
            .toolbar {
                EditButton()  // Allows editing for delete action
            }
        }
    }
    
//    private func addNewSpace() {
//        let newSpace = Space(spaceType: .cookingZone, room: room, subTasks: []) // Example creation; customize as needed
//        room.spaces.append(newSpace)
//        saveContext()
//    }

    private func deleteSpace(at offsets: IndexSet) {
        withAnimation {
            room.spaces.remove(atOffsets: offsets)
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try modelContext.save()
        } catch {
            print("Failed to save context: \(error.localizedDescription)")
        }
    }
}

// Assume SpaceCardView is defined elsewhere in your project
