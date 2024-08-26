//
//  MinitaskListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct MiniTaskListView: View {
    @ObservedObject var subTask: SubTask
    @Environment(\.editMode) private var editMode // Use environment edit mode

    var body: some View {
        List {
            if subTask.miniTasks.isEmpty {
                Text("No miniTasks available")
                    .foregroundColor(.gray)
            } else {
                ForEach(subTask.miniTasks) { miniTask in
                    MiniTaskRowView(miniTask: miniTask, isEditing: editMode?.wrappedValue == .active)
                }
                .onDelete(perform: deleteMiniTask)
            }
        }
        .navigationTitle("\(subTask.name) MiniTasks")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton() // Automatically toggles the environment edit mode
            }
        }
    }
    
    private func deleteMiniTask(at offsets: IndexSet) {
        withAnimation {
            subTask.miniTasks.remove(atOffsets: offsets)
        }
    }
}

struct MiniTaskRowView: View {
    var miniTask: MiniTask // Directly use miniTask instead of @Binding
    var isEditing: Bool
    
    var body: some View {
        HStack {
            Text(miniTask.name)
            Spacer()
            if isEditing {
                Button(action: {
                    // Assume you have logic here to toggle completion
                    miniTask.isCompleted.toggle() // You may need to update this logic based on your model's design
                }) {
                    Image(systemName: miniTask.isCompleted ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(miniTask.isCompleted ? .green : .gray)
                }
            }
        }
    }
}

struct MiniTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleMiniTasks = [
            MiniTask(name: "Clean Shelf", imageName: "sample image"),
            MiniTask(name: "Organize Pantry", imageName: "sample image"),
            MiniTask(name: "Label Containers", imageName: "sample image")
        ]
        
        let sampleSubTask = SubTask(name: "Pantry", miniTasks: sampleMiniTasks)
        
        MiniTaskListView(subTask: sampleSubTask)
    }
}
