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
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    ProgressView(value: project.progress, total: 100)
                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
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
                Text("First Step")
                    .font(.headline)
                    .padding(.leading)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(project.rooms) { room in
                        NavigationLink(destination: RoomDetailView(room: room)) {
                            CardView(item: room)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("Where to Start")
//        .toolbar {
//            Button(action: {
                // Action for editing the room or adding new spaces
//            }) {
//                Image(systemName: "pencil")
//            }
//        }
    }
}

