//
//  SpaceDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import SwiftUI

struct SpaceDetailView: View {
    @EnvironmentObject var viewModel: ProjectViewModel
    var space: Space
    var projectID: UUID
    var roomID: UUID
    @State private var newTaskDetailName: String = ""

    var body: some View {
        VStack {
            HStack {
                TextField("New Task Name", text: $newTaskDetailName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    addNewTaskDetail()
                }) {
                    Text("Add Task")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }.padding()

            List {
                ForEach(space.subtasks) { subtask in // Access the correct property
                    NavigationLink(destination: SubtaskDetailView(subtask: subtask)) {
                        Text(subtask.name)
                    }
                }
                .onDelete(perform: deleteTaskDetails)
            }
            .navigationTitle(space.name)
            .toolbar {
                EditButton()
            }
        }
    }

    private func addNewTaskDetail() {
        if let projectIndex = viewModel.projects.firstIndex(where: { $0.id == projectID }),
           let roomIndex = viewModel.projects[projectIndex].rooms.firstIndex(where: { $0.id == roomID }),
           let spaceIndex = viewModel.projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == space.id }) {
            let newTaskDetail = Subtask(name: newTaskDetailName)
            viewModel.projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks.append(newTaskDetail)
            newTaskDetailName = ""
        }
    }

    private func deleteTaskDetails(at offsets: IndexSet) {
        if let projectIndex = viewModel.projects.firstIndex(where: { $0.id == projectID }),
           let roomIndex = viewModel.projects[projectIndex].rooms.firstIndex(where: { $0.id == roomID }),
           let spaceIndex = viewModel.projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == space.id }) {
            viewModel.projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks.remove(atOffsets: offsets)
        }
    }
}
