//
//  RoomSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct RoomSelectionView: View {
    var project: RoomProject
    @State private var room: Room
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    // Assuming you meant RoomProject or another valid type if BaseProject doesn't exist
    @State var baseProject: RoomProject = RoomProject(name: "Default Project") // Correct the type and initialization
    
    // Initialize with a project and extract room from it
    init(project: RoomProject) {
        self.project = project
        if let firstRoom = project.rooms.first {
            _room = State(initialValue: firstRoom) // Safely unwrap the first room
        } else {
            _room = State(initialValue: Room(name: "Default Room", imageName: nil, weight: 0, spaces: [])) // Provide a default room
        }
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                if project.rooms.isEmpty { // Check for empty rooms
                    Text("No rooms available.")
                        .font(.headline)
                        .padding()
                } else {
                    ForEach(project.rooms, id: \.id) { room in  // Iterate over project.rooms
                        VStack {
                            TaskCard(
                                title: room.name,
                                imageName: room.imageName ?? "defaultImage",
                                progress: room.progress,
                                isComplete: room.isCompleted
                            )
                            .buttonStyle(PlainButtonStyle())
                            
                            HStack {
                                Text("Status:")
                                Toggle(isOn: Binding(
                                    get: { room.isCompleted },
                                    set: { newValue in
                                        room.isCompleted = newValue
                                        projectController.updateRoomStatus(room: room, isCompleted: newValue, context: modelContext)
                                    }
                                )) {
                                    Text(room.isCompleted ? "Completed" : "In Progress")
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
            }
            .padding()
        }
        .navigationTitle("Select a Room")
        .toolbar {
            EditButton()
        }
    }
    
    private func deleteRoom(at offsets: IndexSet) {
        project.rooms.remove(atOffsets: offsets) // Array mutation
        projectController.updateProject(project, context: modelContext)  // Persist changes to the project
    }
}

struct RoomSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        // Assuming 'baseProjects' is an array of RoomProject instances; define or replace it
        let baseProjects: [RoomProject] = [RoomProject(name: "Sample Project", rooms: [Room(name: "Living Room", imageName: "LivingRoom", weight: 3, spaces: [])])]
        let selectedProject = baseProjects.first! // Safe unwrap in preview context
        
        RoomSelectionView(project: selectedProject)
            .environmentObject(ProjectController.shared)
    }
}
