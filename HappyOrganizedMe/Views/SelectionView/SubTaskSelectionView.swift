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
                                NavigationLink(destination: SubTaskDetailView(subTask: subTask)) {
                                    CardView(item: subTask)
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

