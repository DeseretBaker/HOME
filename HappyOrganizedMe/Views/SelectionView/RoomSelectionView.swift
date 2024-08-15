
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
    @State private var rooms: [Room]
    
    @EnvironmentObject var projectViewModel: ProjectViewModel
    @Environment(\.modelContext) private var modelContext  // Access the model context
    
    // Initialize with a project and extract rooms from it
    init(project: Project) {
        self.project = project
        _rooms = State(initialValue: project.rooms)
    }
    
    var body: some View {
        List {
            ForEach($rooms) { $room in
                VStack(alignment: .leading) {
                    HStack {
                        Text(room.name)
                            .font(.headline)
                        
                        Spacer()
                        
                        NavigationLink(destination: EditRoomView(room: $room)) {
                            Image(systemName: "pencil")
                                .foregroundColor(.blue)
                        }
                    }
                    
                    HStack {
                        Text("Status:")
                        Toggle(isOn: Binding(
                            get: { room.isCompleted },
                            set: { newValue in
                                room.isCompleted = newValue
                                projectViewModel.updateRoomStatus(room: room, isCompleted: newValue, context: modelContext)
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
            projectViewModel.updateProject(project, context: modelContext)  // Persist changes to the project
        }
    }
}
struct RoomSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        let selectedProject = ProjectViewModel().baseProjects[]
        RoomSelectionView(project: selectedProject)
            .environmentObject(ProjectViewModel())
    }
}
