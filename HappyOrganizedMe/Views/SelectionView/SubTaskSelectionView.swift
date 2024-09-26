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
    @Environment(\.modelContext) private var modelContext
    @Bindable var space: Space  // Use @Bindable to automatically update the view when the space changes
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
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
                                
                                ZStack {
                                    NavigationLink(destination: SubTaskDetailView(subTask: subTask)) {
                                        CardView(item: subTask)
                                    }
                                }
                            
                                .contextMenu {
                                    Button(role: .destructive) {
                                        deleteSubTask(subTask: subTask)
                                    } label: {
                                        Label("Delete", systemImage: "trash")
                                    }
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


    private func deleteSubTask(subTask: SubTask) {
        guard let index = space.subTasks.firstIndex(where: { $0.id == subTask.id }) else { return }
        
        withAnimation {
            space.subTasks.remove(at: index)
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try modelContext.save()
            print("successfully saved context.")
        } catch {
            print("Failed to save context: \(error.localizedDescription)")
        }
    }
}

