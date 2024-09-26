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
    @Environment(\.modelContext) private var modelContext    
    @Bindable var subTask: SubTask  // Use @Bindable to automatically update the view when the subtask changes
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    var body: some View {
        
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
                                MiniTaskCardView(miniTask: miniTask, modelContext: modelContext)  // Assuming MiniTaskCardView is defined elsewhere in your project
                            }
                        }
                    }
                    .padding()
                }
            }
            
        }
        .navigationTitle("Nitty-Gritty")
        .toolbar {
            EditButton()  // Allows editing for delete action
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
    @Bindable var miniTask: MiniTask
    var modelContext: ModelContext  // Accept modelContext as a parameter

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(miniTask.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 110)
                .clipped()
                .cornerRadius(10)

            Text(miniTask.name)
                .font(.headline)
                .padding(.top, 5)

            ForEach($miniTask.checkableItems) { $item in
                HStack {
                    Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture { item.isCompleted.toggle() }
                    Text(item.name)
                }
                .padding(.vertical, 5)
            }

            Spacer()

            Button(action: toggleCompletionStatus) {
                Text(miniTask.isCompleted ? "Mark as Incomplete" : "Mark as Complete")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(miniTask.isCompleted ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }

    private func toggleCompletionStatus() {
        miniTask.isCompleted.toggle()

        do {
            try modelContext.save()  // Use passed-down modelContext to save
        } catch {
            print("Error saving context: \(error.localizedDescription)")
        }
    }
}
