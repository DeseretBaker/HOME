//
//  AddProjectView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import Foundation
import SwiftUI

struct AddProjectView: View {
    @Binding var projects: [Project]
    @State private var projectName: String = ""
    @State private var imageName: String = ""
    @State private var newProject: Project?
    
    var body: some View {
        Form {
            Section(header: Text("Project Details")) {
                TextField("Project Name", text: $projectName)
                TextField("Image Name", text: $imageName)
            }
            
            NavigationLink(destination: AddRoomView(project: $newProject)) {
                Button("Add Project") {
                    let createdProject = Project(name: projectName, imageName: imageName)
                    projects.append(createdProject)
                    newProject = createdProject
                }
            }
            .disabled(projectName.isEmpty)
        }
        .navigationTitle("Add New Project")
    }
}
