//
//  ProjectSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import SwiftData
import SwiftUI

struct ProjectSelectionView: View {
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    var body: some View {
        List {
            ForEach(projectController.baseProjects) { project in
                NavigationLink(destination: RoomSelectionView(project: project)) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(project.name)
                                .font(.headline)
                                .padding()
                            Image("Kitchen2")
                                .foregroundColor(.blue)
                        }

                        HStack {
                            Text("Status:")
                            Toggle(isOn: Binding(
                                get: { project.isCompleted },
                                set: { newValue in
                                    project.isCompleted = newValue
                                    projectController.updateProjectStatus(project: project, isCompleted: newValue, context: modelContext)
                                }
                            )) {
                                Text(project.isCompleted ? "Completed" : "Incomplete")
                            }
                        }

                        ProgressView(value: project.progress)
                            .progressViewStyle(LinearProgressViewStyle())
                            .padding(.top, 4)
                    }
                    .padding(.vertical, 8)
                }
            }
            .onDelete(perform: deleteProject)
        }
        .navigationTitle("Select a Project")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteProject(at offsets: IndexSet) {
        if let index = offsets.first {
            let projectToDelete = projectController.projects[index]
            projectController.projects.remove(atOffsets: offsets)
            projectController.updateProject(projectToDelete, context: modelContext)
        }
    }
}

struct ProjectSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        let projectController = ProjectController.shared
        ProjectSelectionView()
            .environmentObject(projectController)  // Use the same instance
    }
}
