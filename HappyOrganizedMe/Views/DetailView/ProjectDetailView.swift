//
//  ProjectDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import SwiftUI

struct ProjectDetailView: View {
    var project: Project
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(project.name)
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            Text("Rooms in this project:")
                .font(.headline)
            
            List(project.rooms, id: \.id) { room in
                Text(room.name)
            }
            
            // Add more detailed project information here
            
            Spacer()
        }
        .padding()
        .navigationTitle("Project Details")
    }
}
