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
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("Project Details")) {
                TextField("Project Name", text: $projectName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add Project") {
                let newProject = Project(name: projectName, imageName: imageName, rooms: [])
                projects.append(newProject)
            }
            
        }
        .navigationTitle("Add New Project")
    }
    
    
}
