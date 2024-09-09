//
//  SpaceDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import SwiftUI

struct SpaceDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var space: Space  // To track changes in space data
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Space Header
                Image(space.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 125)
                    .clipped()
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 10) {
                    Text(space.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                ProgressView(value: space.progress, total: 100)
                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                    .padding(.vertical, 10)
                
                HStack {
                    Text("Progress: \(String(format: "%.0f", space.progress))%")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("Status: \(space.isCompleted ? "Completed" : "In Progress")")
                        .font(.subheadline)
                        .foregroundColor(space.isCompleted ? .green : .orange)
                }
                
                // SubTask List Header
                Text("SubTasks")
                    .font(.headline)
                    .padding(.top)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(space.subTasks) { subTask in
                        NavigationLink(destination: SubTaskDetailView(subTask: subTask)) {
                            CardView(item: subTask)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding([.leading, .trailing])
        }
        .navigationTitle("Space Details")
        .toolbar {
            Button(action: {
                // Action for editing the space or adding new subtasks
            }) {
//                Image(systemName: "pencil")
            }
        }
    }
}

// SubTaskCardView extracted as a separate struct to display individual subtask cards.
//struct SubTaskCardView2: View {
//    var subTask: SubTask
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing: 10) {
//            Image(subTask.imageName)
//                .resizable()
//                .scaledToFill()
//                .frame(height: 110)
//                .clipped()
//                .cornerRadius(10)
//            
//            Text(subTask.name)
//                .font(.headline)
//                .padding(.top, 5)
//            
//            ProgressView(value: subTask.progress, total: 100)
//                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
//            
//            Text("Progress: \(String(format: "%.0f", subTask.progress))%")
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//        }
//        .padding()
//        .background(Color.white)
//        .cornerRadius(10)
//        .shadow(radius: 5)
//    }
//}
