//
//  MiniTaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftData
import SwiftUI

struct MiniTaskSelectionView: View {
    var projectController = ProjectController.shared
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    @Bindable var subTask: SubTask  // Use @Bindable to automatically update the view when the subtask changes

    var body: some View {
        NavigationView {
            VStack {
                if subTask.miniTasks.isEmpty {
                    Text("No mini-tasks available in this subtask.")
                        .font(.headline)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                            ForEach(subTask.miniTasks) { miniTask in
                                NavigationLink(destination: MiniTaskDetailView(miniTask: miniTask)) {
                                    MiniTaskCardView(miniTask: miniTask)  // Assuming MiniTaskCardView is defined elsewhere in your project
                                }
                            }
                        }
                        .padding()
                    }
                }
               
            }
            .navigationTitle("Select a MiniTask")
            .toolbar {
                EditButton()  // Allows editing for delete action
            }
        }
    }
    

    private func deleteMiniTask(at offsets: IndexSet) {
        withAnimation {
            subTask.miniTasks.remove(atOffsets: offsets)
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try modelContext.save()
        } catch {
            print("Failed to save context: \(error.localizedDescription)")
        }
    }
}

// MiniTaskCardView - Displays information about a MiniTask
struct MiniTaskCardView: View {
    var miniTask: MiniTask
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(miniTask.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .clipped()
                .cornerRadius(10)
            
            Text(miniTask.name)
                .font(.headline)
                .padding(.top, 5)
            
            ProgressView(value: miniTask.progress, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
            
            Text("Progress: \(String(format: "%.0f", miniTask.progress))%")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

