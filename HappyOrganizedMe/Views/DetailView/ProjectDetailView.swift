//
//  ProjectDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

// ProjectDetailView.swift
import SwiftUI

struct ProjectDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var project: Project
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Project Header
                VStack(alignment: .leading, spacing: 10) {
                    Image(project.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 125)
                        .clipped()
                        .cornerRadius(10)
                                    
                    Text(project.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    ProgressView(value: project.progress, total: 100)
                        .progressViewStyle(LinearProgressViewStyle(tint: .green))
                        .padding(.vertical, 10)
                    
                    HStack {
                        Text("Progress: \(String(format: "%.0f", project.progress))%")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("Status: \(project.isCompleted ? "Completed" : "In Progress")")
                            .font(.subheadline)
                            .foregroundColor(project.isCompleted ? .green : .orange)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding([.leading, .trailing])
                
                // Room Grid
                Text("Rooms")
                    .font(.headline)
                    .padding(.leading)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(project.rooms) { room in
                        NavigationLink(destination: RoomDetailView(room: room)) {
                            CardView(item: room) // Use the generic CardView
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("Project Details")
    }
}
