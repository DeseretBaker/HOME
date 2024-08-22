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
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                if projectController.projects.isEmpty {
                    Text("No projects available.")
                        .font(.headline)
                        .padding()
                } else {
                    ForEach(projectController.projects, id: \.id) { project in
                        NavigationLink(destination: RoomSelectionView(project: project)) {
                            TaskCard(
                                title: project.name,
                                imageName: project.imageName ?? "defaultImage",  // Use a default image name if nil
                                progress: project.progress,
                                isComplete: project.isCompleted
                            )
                        }
                        .buttonStyle(PlainButtonStyle()) // To remove default NavigationLink style
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Select a Project")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteProject(at offsets: IndexSet) {
        for index in offsets {
            let projectToDelete = projectController.projects[index]
            projectController.projects.remove(at: index)
            projectController.updateProject(projectToDelete, context: modelContext)
        }
    }
}

struct ProjectSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        let mockRooms = [
            Room(name: "Room 1", imageName: "Kitchen", weight: 1),
            Room(name: "Room 2", imageName: "Kitchen2", weight: 1),
            Room(name: "Room 3", imageName: "Kitchen3", weight: 1),
            Room(name: "Room 4", imageName: "Kitchen", weight: 1),
            Room(name: "Room 5", imageName: "Kitchen2", weight: 1),
            Room(name: "Room 6", imageName: "Kitchen3", weight: 1)
        ]
        
        let mockProjects = [
            RoomProject(name: "Project 1", imageName: "ProjectImage1", rooms: mockRooms),
            RoomProject(name: "Project2", imageName: "ProjectImage2", rooms: mockRooms),
            RoomProject(name: "Project3", imageName: "ProjectImage3", rooms: mockRooms),
            RoomProject(name: "Project4", imageName: "ProjectImage4", rooms: mockRooms),
            RoomProject(name: "Project5", imageName: "ProjectImage5", rooms: mockRooms),
            RoomProject(name: "Project6", imageName: "ProjectImage6", rooms: mockRooms)
        ]
        let projectController = ProjectController()
        projectController.projects = mockProjects // Assign mock projects to the controller
        
        return NavigationView {
            ProjectSelectionView()
                .environmentObject(projectController)
        }
    }
}
