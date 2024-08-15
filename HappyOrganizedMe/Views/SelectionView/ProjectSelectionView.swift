//
//  ProjectSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import SwiftData
import SwiftUI

struct ProjectSelectionView: View {
    @EnvironmentObject var projectViewModel: ProjectViewModel
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    var body: some View {
        List {
            ForEach(projectViewModel.baseprojects) { project in
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
                                    projectViewModel.updateProjectStatus(project: project, isCompleted: newValue, context: modelContext)
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
            let projectToDelete = projectViewModel.projects[index]
            projectViewModel.projects.remove(atOffsets: offsets)
            projectViewModel.updateProject(projectToDelete, context: modelContext)
        }
    }
}

struct ProjectSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        let projectViewModel = ProjectViewModel()
        ProjectSelectionView()
            .environmentObject(projectViewModel)  // Use the same instance
    }
}
