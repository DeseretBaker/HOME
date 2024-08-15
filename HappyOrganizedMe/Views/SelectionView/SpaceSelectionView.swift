//
//  SpaceSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct SpaceSelectionView: View {
    var project: Project
    var room: Room
    
    
    
    @EnvironmentObject var projectViewModel: ProjectViewModel
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    @State private var spaces: [Space]

    init(room: Room, project: Project) {
        self.room = room
        self.project = project
        _spaces = State(initialValue: room.spaces)
    }
    
    var body: some View {
        List {
            ForEach($spaces) { $space in
                VStack(alignment: .leading) {
                    HStack {
                        Text(space.name)
                        
                        Spacer()
                        
                        NavigationLink(destination: EditSpaceView(space: $space)) {
                            Image(systemName: "pencil")
                                .foregroundColor(.blue)
                        }
                    }
                    
                    HStack {
                        Text("Status:")
                        Toggle(isOn: Binding(
                            get: { space.isCompleted },
                            set: { newValue in
                                space.isCompleted = newValue
                                projectViewModel.updateSpaceStatus(space: space, isCompleted: newValue, context: modelContext)
                            }
                        )) {
                            Text(space.isCompleted ? "Completed" : "Incomplete")
                        }
                    }
                    
                    ProgressView(value: space.progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding(.top, 4)
                }
                .padding(.vertical, 8)
            }
            .onDelete(perform: deleteSpace)
        }
        .navigationTitle("Select a Space")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteSpace(at offsets: IndexSet) {
        if offsets.first != nil {
            room.spaces.remove(atOffsets: offsets)
            spaces = room.spaces // Update the local state
            projectViewModel.updateProject(project, context: modelContext)  // Persist changes to the project
        }
    }
}
