//
//  SubTaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct SubTaskDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var subTask: SubTask  // Property to track changes in subtask data

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(subTask.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                ProgressView(value: subTask.progress, total: 100)
                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                    .padding(.vertical, 10)
                
                HStack {
                    Text("Progress: \(String(format: "%.0f", subTask.progress))%")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("Status: \(subTask.isCompleted ? "Completed" : "In Progress")")
                        .font(.subheadline)
                        .foregroundColor(subTask.isCompleted ? .green : .orange)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding([.leading, .trailing])
            
            Text("MiniTasks")
                .font(.headline)
                .padding(.leading)
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                ForEach(subTask.miniTasks) { miniTask in
                    NavigationLink(destination: MiniTaskDetailView(miniTask: miniTask)) {
                        MiniTaskCardView(miniTask: miniTask)
                    }
                }
            }
            .padding([.leading, .trailing])
        }
        .navigationTitle("SubTask Details")
        .toolbar {
            Button(action: {
                // Action for editing the subtask or adding new miniTasks
            }) {
                Image(systemName: "pencil")
            }
        }
    }
}
