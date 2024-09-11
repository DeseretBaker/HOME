//
//  ProjectDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

// ProjectDetailView.swift
import SwiftUI

struct ProjectDetailView: View {
    @Bindable var project: Project

    var body: some View {
        VStack {
            Text(project.projectType.usageDescription ?? "")
                .font(.title)
            
            List(project.rooms) { room in
                Text(room.roomType.usageDescription ?? "")
            }
        }
        .navigationTitle("Project Details")
    }
}
