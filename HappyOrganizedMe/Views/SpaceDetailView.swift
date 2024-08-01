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
    @State private var newTaskName: String = ""

    var body: some View {
        VStack {
            HStack {
                TextField("New Task Name", text: $newTaskName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    if let projectIndex = viewModel.projects.firstIndex(where: { $0.id == projectID }),
                       let roomIndex = viewModel.projects[projectIndex].rooms.firstIndex(where: { $0.id == roomID }),
                       let spaceIndex = viewModel.projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == space.id }) {
                        viewModel.projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].tasks.append(Task(name: newTaskName))
                        newTaskName = ""
                    }
                }) {
                    Text("Add Task")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }.padding()

            List {
                ForEach(space.tasks) { task in
                    NavigationLink(destination: TaskDetailView(task: task)) {
                        Text(task.name)
                    }
                }
                .onDelete { indices in
                    if let projectIndex = viewModel.projects.firstIndex(where: { $0.id == projectID }),
                       let roomIndex = viewModel.projects[projectIndex].rooms.firstIndex(where: { $0.id == roomID }),
                       let spaceIndex = viewModel.projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == space.id }) {
                        indices.forEach { index in
                            viewModel.projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].tasks.remove(at: index)
                        }
                    }
                }
            }
            .navigationTitle(space.name)
            .toolbar {
                EditButton()
            }
        }
    }
}
