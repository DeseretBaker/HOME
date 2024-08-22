//
//  MinitaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI
import SwiftData

struct MinitaskSelectionView: View {
    var project: RoomProject
    var room: Room
    var space: Space
    var subtask: Subtask
    
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    @State private var minitasks: [Minitask]
    
    init(subtask: Subtask, space: Space, room: Room, project: RoomProject) {
        self.subtask = subtask
        self.space = space
        self.room = room
        self.project = project
        _minitasks = State(initialValue: subtask.minitasks)
    }
    
    var body: some View {
        List {
            ForEach($minitasks) { $minitask in
                TaskCard(
                    title: minitask.name,
                    imageName: minitask.imageName ?? "defaultImage", // Provide a default image if none is set
                    progress: minitask.progress,
                    isComplete: minitask.isCompleted
                )
                .contextMenu {
                    Button(action: {
                        // Action for editing minitask
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(action: {
                        deleteMinitask(at: IndexSet(integer: minitasks.firstIndex(of: minitask)!))
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
            .onDelete(perform: deleteMinitask)
        }
        .navigationTitle("Select a Minitask")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteMinitask(at offsets: IndexSet) {
        subtask.minitasks.remove(atOffsets: offsets)
        minitasks = subtask.minitasks // Update the local state
        projectController.updateProject(project, context: modelContext)  // Persist changes to the project
    }
}
