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
    
    // Dynamically calculate grid columns based on the screen size
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: UIScreen.main.bounds.width > 768 ? 200 : 100), spacing: 16)]
    }
    
    var body: some View {
        VStack {
            // Safely unwrap space.subTasks before using it
            if let subTasks = space.subTasks, !subTasks.isEmpty {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) { // Use dynamic columns based on screen size
                        ForEach(subTasks) { subTask in
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
                    .frame(maxWidth: .infinity)  // Ensures the grid takes up the full width
                }
            } else {
                Text("No subtasks available in this space.")
                    .font(.headline)
                    .padding()
            }
        }
        .navigationTitle("Select a SubTask")
        .toolbar {
            EditButton()  // Allows editing for delete action
        }
    }

    private func deleteSubTask(subTask: SubTask) {
        guard let index = space.subTasks?.firstIndex(where: { $0.id == subTask.id }) else { return }
        
        withAnimation {
            space.subTasks?.remove(at: index)
            saveContext()  // Save after deletion
        }
    }
    
    private func saveContext() {
        do {
            try modelContext.save()
            print("Successfully saved context.")
        } catch {
            print("Failed to save context: \(error.localizedDescription)")
        }
    }
}
