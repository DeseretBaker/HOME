//
//  SubtaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//
import SwiftUI
import SwiftData

struct SubtaskSelectionView: View {
    var project: RoomProject
    var room: Room
    var space: Space
    
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    @State private var subtasks: [Subtask]

    init(space: Space, room: Room, project: RoomProject) {
        self.space = space
        self.room = room
        self.project = project
        _subtasks = State(initialValue: space.subtasks)
    }
    
    var body: some View {
        List {
            ForEach($subtasks) { $subtask in
                TaskCard(
                    title: subtask.name,
                    imageName: subtask.imageName ?? "defaultImage", // Provide a default image if none is set
                    progress: subtask.progress,
                    isComplete: subtask.isCompleted
                )
                .contextMenu {
                    Button(action: {
                        // Action for editing subtask
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(action: {
                        deleteSubtask(at: IndexSet(integer: subtasks.firstIndex(of: subtask)!))
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
            .onDelete(perform: deleteSubtask)
        }
        .navigationTitle("Select a Subtask")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteSubtask(at offsets: IndexSet) {
        space.subtasks.remove(atOffsets: offsets)
        subtasks = space.subtasks // Update the local state
        projectController.updateProject(project, context: modelContext)  // Persist changes to the project
    }
}
