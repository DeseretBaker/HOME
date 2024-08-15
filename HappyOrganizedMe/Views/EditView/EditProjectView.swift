//
//  EditProjectView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/11/24.
//

import SwiftUI

struct EditProjectView: View {
    @Binding var project: Project
    @State private var projectName: String
    @State private var imageName: String
    
    init(project: Binding<Project>) {
        self._project = project
        _projectName = State(initialValue: project.wrappedValue.name)
        _imageName = State(initialValue: project.wrappedValue.imageName ?? "")
    }
    
    var body: some View {
        Form {
            Section(header: Text("Project Details")) {
                TextField("Project Name", text: $projectName)
                TextField("Image Name (optional)", text: $imageName)
            }
            Button("Save Changes") {
                project.name = projectName
                project.imageName = imageName.isEmpty ? nil : imageName
            }
            .disabled(projectName.isEmpty)
        }
        .navigationTitle("Edit Project")
    }
}
