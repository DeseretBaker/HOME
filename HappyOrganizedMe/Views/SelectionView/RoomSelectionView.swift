//
//  RoomSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct RoomSelectionView: View {
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext  // Access the model context
    @Bindable var project: Project  // Use @Bindable to automatically update the view when the project changes

    var body: some View {
        NavigationView {
            VStack {
                if project.rooms.isEmpty {
                    Text("No rooms available in this project.")
                        .font(.headline)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            ForEach(project.rooms) { room in
                                NavigationLink(destination: RoomDetailView(room: room)) {
                                    CardView(item: room) // Pass the `room` object to `CardView` as it conforms to `Displayable`
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Select a Room")
            .toolbar {
                EditButton()  // Allows editing for delete action
            }
        }
    }
}
