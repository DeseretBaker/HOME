//
//  EditProjectView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/11/24.
//

import SwiftUI

struct EditProjectView: View {
    @Binding var project: RoomProject
    @State private var projectName: String
    @State private var imageName: String
    
    init(project: Binding<RoomProject>) {
        self._project = project
        self._projectName = State(initialValue: project.wrappedValue.name)
        self._imageName = State(initialValue: project.wrappedValue.imageName ?? "")
    }
    
    var body: some View {
        Form {
            Section(header: Text("Edit Project Details")) {
                TextField("Project Name", text: projectName)
                TextField("Image Name", text: imageName)
            }
            
            Button("Save Changes") {
                project.name = projectName
                project.imageName = imageName
            }
        }
        .navigationTitle("Edit Project")
    }
}
