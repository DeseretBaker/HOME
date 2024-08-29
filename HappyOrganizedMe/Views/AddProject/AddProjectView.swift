//
//  AddProjectView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import Foundation
import SwiftUI

@Observable
class AddProjectViewModel {
    // Variables added by AddProjectView
    var projectName: String?
    var imageName: String?
    
    // Variables added by AddRoomView
    var roomName: String?
    var roomWeight: Double?
    
    func createProject() -> RoomProject? {
        guard let projectName, let imageName else { return nil }
        let project = RoomProject(projectType: .kitchen, rooms: [])
        guard let roomName, let roomWeight else { return nil }
        let room = Room.createTestRoom(name: roomName, weight: roomWeight)
        project.rooms.append(room)
        return project
    }
}

struct AddProjectView: View {
    // TODO: Add ViewModel to house variables needed to create a Project/Room
//    var addProjectViewModel: AddProjectViewModel
    @Binding var projects: [RoomProject]
    
    // TODO: Comment out these variables and instead use variables from AddProjectViewModel
    @State private var projectName: String = ""
    @State private var imageName: String = ""
    @State private var newProject: RoomProject?
    
    var body: some View {
        Form {
            Section(header: Text("Project Details")) {
                TextField("Project Name", text: $projectName)
                TextField("Image Name", text: $imageName)
            }

            Button("Add Project") {
                let createdProject = RoomProject(projectType: .kitchen, rooms: [])
                projects.append(createdProject)
                self.newProject = createdProject
            }
            .disabled(projectName.isEmpty)
            .navigationDestination(item: $newProject) { newProject in
                AddRoomView(project: newProject)
            }
        }
        .navigationTitle("Add New Project")
    }
}
