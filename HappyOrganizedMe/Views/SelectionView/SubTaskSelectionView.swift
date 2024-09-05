//
//  SubTaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//
import SwiftUI
import SwiftData

struct SubTaskSelectionView: View {
    var projectController: ProjectController = .shared
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    @Bindable var space: Space  // Use @Bindable to automatically update the view when the space changes

    var body: some View {

            VStack {
                if space.subTasks.isEmpty {
                    Text("No subtasks available in this space.")
                        .font(.headline)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                            ForEach(space.subTasks) { subTask in
                                NavigationLink(destination: SubTaskDetailView(subTask: subTask)) {
                                    SubTaskCardView(subTask: subTask)  // Assuming SubTaskCardView is defined elsewhere in your project
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Select a SubTask")
            .toolbar {
                EditButton()  // Allows editing for delete action
            }
    }


    private func deleteSubTask(at offsets: IndexSet) {
        withAnimation {
            space.subTasks.remove(atOffsets: offsets)
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

struct SubTaskCardView: View {
    var subTask: SubTask
    
    var imageName: String {
        if !subTask.imageName.isEmpty {
            return subTask.imageName
        } else {
            return "defaultImage"
        }
    }
    
    var body: some View {
        VStack {
            Image(imageName)  // Provide a default image if nil
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .cornerRadius(10)
            
            Text(subTask.name)
                .font(.headline)
                .padding(.top, 5)
            
            ProgressView(value: subTask.progress, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: .green))
            
            Text("Progress: \(String(format: "%.0f", subTask.progress))%")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
