//
//  SpaceSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct SpaceSelectionView: View {
    var project: RoomProject
    var room: Room
    
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    @State private var spaces: [Space]

    init(room: Room, project: RoomProject) {
        self.room = room
        self.project = project
        _spaces = State(initialValue: room.spaces)
    }
    
    var body: some View {
        List {
            ForEach($spaces) { $space in
                TaskCard(
                    title: space.name,
                    imageName: space.imageName ?? "defaultImage", // Provide a default image if none is set
                    progress: space.progress,
                    isComplete: space.isCompleted
                )
                .contextMenu {
                    Button(action: {
                        // Action for editing space
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(action: {
                        deleteSpace(at: IndexSet(integer: spaces.firstIndex(of: space)!))
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
            .onDelete(perform: deleteSpace)
        }
        .navigationTitle("Select a Space")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteSpace(at offsets: IndexSet) {
        room.spaces.remove(atOffsets: offsets)
        spaces = room.spaces // Update the local state
        projectController.updateProject(project, context: modelContext)  // Persist changes to the project
    }
}
