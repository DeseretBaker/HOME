//
//  MinitaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI
import SwiftData

struct MiniTaskSelectionView: View {
    var project: RoomProject
    var room: Room
    var space: Space
    var subTask: SubTask
    
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    @State private var miniTasks: [MiniTask]
    
    init(subTask: SubTask, space: Space, room: Room, project: RoomProject) {
        self.subTask = subTask
        self.space = space
        self.room = room
        self.project = project
        _miniTasks = State(initialValue: subTask.miniTasks)
    }
    
    var body: some View {
        List {
            ForEach(miniTasks) { miniTask in
                TaskCard(
                    title: miniTask.name,
                    imageName: miniTask.imageName ?? "defaultImage", // Provide a default image if none is set
                    progress: miniTask.progress,
                    isComplete: miniTask.isCompleted
                )
                .contextMenu {
                    Button(action: {
                        // Action for editing miniTask
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(action: {
                //        deleteMiniTask(at: IndexSet(integer: miniTasks.firstIndex(of: miniTask)!))
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
           // .onDelete(perform: deleteMiniTask)
        }
        .navigationTitle("Select a MiniTask")
        .toolbar {
            EditButton()
        }
    }
    
//    private func deleteMiniTask(at offsets: IndexSet) {
//        subtask.miniTasks.remove(atOffsets: offsets)
//        miniTasks = subtask.miniTasks // Update the local state
//        projectController.updateProject(project, context: modelContext)  // Persist changes to the project
//    }
}
