//
//  ProjectSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import SwiftData
import SwiftUI

struct ProjectSelectionView: View {
    var projectController: ProjectController = .shared
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                if projectController.projects.isEmpty {
                    Text("No projects available.")
                        .font(.title)
                        .padding()
                } else {
                    ForEach(projectController.projects) { project in
                        NavigationLink(destination: RoomSelectionView(project: project)) {
                            CardView(item: project)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .onDelete(perform: deleteProject)
                }
            }
            .padding()
        }
        .navigationTitle("Projects")
        .toolbar {
            EditButton()
        }
        
    }
    
    private func deleteProject(at offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                let projectToDelete = projectController.projects[index]
                projectController.projects.remove(at: index)
                projectController.deleteProject(projectToDelete, context: modelContext)
            }
        }
    }
}
