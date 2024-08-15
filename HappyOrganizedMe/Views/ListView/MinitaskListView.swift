//
//  MinitaskListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct MinitaskListView: View {
    @ObservedObject var subtask: Subtask
    @State private var isEditing = false
    
    var body: some View {
        List {
            if subtask.minitasks.isEmpty {
                Text("No minitasks available")
                    .foregroundColor(.gray)
            } else {
                ForEach($subtask.minitasks) { $minitask in
                    MinitaskRowView(minitask: $minitask, isEditing: $isEditing)
                }
                .onDelete(perform: deleteMinitask)
            }
        }
        .navigationTitle("\(subtask.name) Minitasks")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
                    .onTapGesture {
                        isEditing.toggle()
                    }
            }
        }
    }
    
    private func deleteMinitask(at offsets: IndexSet) {
        withAnimation {
            subtask.minitasks.remove(atOffsets: offsets)
        }
    }
}

struct MinitaskRowView: View {
    @Binding var minitask: Minitask
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            Text(minitask.name)
            Spacer()
            if isEditing {
                Button(action: {
                    minitask.isCompleted.toggle() // directly toggle the bool property
                }) {
                    Image(systemName: minitask.isCompleted ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(minitask.isCompleted ? .green : .gray)
                }
            }
        }
    }
}

struct MinitaskListView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleMinitasks = [
            Minitask(name: "Clean Shelf", imageName: "sample image"),
            Minitask(name: "Organize Pantry", imageName: "sample image"),
            Minitask(name: "Label Containers", imageName: "sample image")
        ]
        
        let sampleSubtask = Subtask(name: "Pantry", minitasks: sampleMinitasks)
        
        MinitaskListView(subtask: sampleSubtask)
    }
}
