//
//  AddRoomView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import SwiftUI

struct AddRoomView: View {
//    var addProjectViewModel: AddProjectViewModel
    var project: RoomProject
    
    // Comment out these variables and instead use variables from AddProjectViewModel
    @State private var roomName: String = ""
    @State private var weight: Double = 1.0
    @State var newRoom: Room?
    
    var body: some View {
        Form {
            Section(header: Text("Room Details")) {
                TextField("Room Name", text: $roomName)
                Slider(value: $weight, in: 0.1...10, step: 0.1) {
                    Text("Weight: \(weight, specifier: "%.1f")")
                }
            }
            Button("Next") {
                // Do something like this:
//                let newProject = addProjectViewModel.createProject()
                
                // save project to SwiftData
                // pass new Project off to next View
            }
//            if let spaces = project.rooms.last?.spaces {
//                NavigationLink(destination: AddSpaceView(spaces: spaces)) {
//                }
//            }
//            Button("Add Room") {
//                //                        if let project = project {
//                let newRoom = Room(name: roomName, weight: weight)
//                project.rooms.append(newRoom)
//                //                        }
//            }
//            .disabled(roomName.isEmpty)
        }
        .navigationTitle("Add Room")
    }
}
