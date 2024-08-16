
//
//  RoomSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct RoomSelectionView: View {
    var project: Project
    @State private var rooms: [Room] // use @State for rooms to track changes
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    // Initialize with a project and extract rooms from it
    init(project: Project) {
        self.project = project
        _rooms = State(initialValue: project.rooms)
    }
    
    var body: some View {
        List {
            ForEach(rooms) { room in
                VStack(alignment: .leading) {
                    HStack {
                        Text(room.name)
                            .font(.headline)
                        
                        Spacer()
                        
                     
                    }
                    
                    HStack {
                        Text("Status:")
                        Toggle(isOn: Binding(
                            get: { room.isCompleted },
                            set: { newValue in
                                room.isCompleted = newValue
                                projectController.updateRoomStatus(room: room, isCompleted: newValue, context: modelContext)
                            }
                        )) {
                            Text(room.isCompleted ? "Completed" : "Incomplete")
                        }
                    }
                    
                    ProgressView(value: room.progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding(.top, 4)
                }
                .padding(.vertical, 8)
            }
            .onDelete(perform: deleteRoom)
        }
        .navigationTitle("Select a Room")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteRoom(at offsets: IndexSet) {
        if let index = offsets.first {
            rooms.remove(atOffsets: offsets)
            project.rooms = rooms
            
            projectController.updateProject(project, context: modelContext)  // Persist changes to the project
        }
    }
}

#Preview {
    let selectedProject = ProjectController.shared.baseProjects.first!
    RoomSelectionView(project: selectedProject)
            .environmentObject(ProjectController.shared)
}
