//
//  SubTaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//
import SwiftUI
import SwiftData

struct SubTaskSelectionView: View {
    var project: Project
    var room: Room
    var space: Space
    
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    @State private var subTasks: [SubTask]

    init(space: Space, room: Room, project: Project) {
        self.space = space
        self.room = room
        self.project = project
        _subTasks = State(initialValue: space.subTasks)
    }
    
    var body: some View {
        List {
            ForEach(subTasks) { subTask in
                TaskCard(
                    title: subTask.name,
                    imageName: subTask.imageName ?? "defaultImage", // Provide a default image if none is set
                    progress: subTask.progress,
                    isComplete: subTask.isCompleted
                )
                .contextMenu {
                    Button(action: {
                        // Action for editing subTask
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(action: {
                   //     deleteSubTask(at: IndexSet(integer: subTasks.firstIndex(of: subTask)!))
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
         //   .onDelete(perform: deleteSubTask)
        }
        .navigationTitle("Select a SubTask")
        .toolbar {
            EditButton()
        }
    }
    
//    private func deleteSubTask(at offsets: IndexSet) {
//        space.subTasks.remove(atOffsets: offsets)
//        subTasks = space.subTasks // Update the local state
//        projectController.updateProject(project, context: modelContext)  // Persist changes to the project
//    }
}
