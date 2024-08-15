//
//  MinitaskSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI
import SwiftData

struct MinitaskSelectionView: View {
    var subtask: Subtask
    var project: Project
    
    @EnvironmentObject var projectViewModel: ProjectViewModel
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    @State private var minitasks: [Minitask]

    init(subtask: Subtask, project: Project) {
        self.subtask = subtask
        self.project = project
        _minitasks = State(initialValue: subtask.minitasks)
    }
    
    var body: some View {
        List {
            ForEach($minitasks) { $minitask in
                VStack(alignment: .leading) {
                    HStack {
                        Text(minitask.name)
                        
                        Spacer()
                        
                        NavigationLink(destination: EditMinitaskView(minitask: $minitask)) {
                            Image(systemName: "pencil")
                                .foregroundColor(.blue)
                        }
                    }
                    
                    HStack {
                        Text("Status:")
                        Toggle(isOn: Binding(
                            get: { minitask.isCompleted },
                            set: { newValue in
                                minitask.isCompleted = newValue
                                projectViewModel.updateMinitaskStatus(minitask: minitask, isCompleted: newValue, context: modelContext)
                            }
                        )) {
                            Text(minitask.isCompleted ? "Completed" : "Incomplete")
                        }
                    }
                    
                    ProgressView(value: minitask.progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding(.top, 4)
                }
                .padding(.vertical, 8)
            }
            .onDelete(perform: deleteMinitask)
        }
        .navigationTitle("Select a Minitask")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteMinitask(at offsets: IndexSet) {
        minitasks.remove(atOffsets: offsets)
        subtask.minitasks = minitasks
        projectViewModel.updateSubtask(subtask, context: modelContext)  // Persist changes
    }
}
