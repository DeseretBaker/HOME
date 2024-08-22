
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
    @State private var rooms: [Room] // use @State for rooms to track changes
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    // Initialize with a project and extract rooms from it
    init(project: RoomProject) {
        self.project = project
        _rooms = State(initialValue: project.rooms)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                if rooms.isEmpty {
                    Text("No rooms available.")
                        .font(.headline)
                        .padding()
                } else {
                    ForEach(rooms, id: \.id) { room in
                        VStack {
                            TaskCard(
                                title: room.name,
                                imageName: room.imageName ?? "defaultImage", progress: room.progress, isComplete: room.isCompleted
                            )
                            .buttonStyle(PlainButtonStyle())
                            HStack {
                                Text("Staus:")
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
            rooms.remove(atOffsets: offsets)
            project.rooms = rooms
            
            projectController.updateProject(project, context: modelContext)  // Persist changes to the project
        }
    }

//struct RoomSelectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        let selectedProject = baseProjects.first!
//        RoomSelectionView(project: selectedProject)
//            .environmentObject(ProjectController.shared)
//    }
//}
//
