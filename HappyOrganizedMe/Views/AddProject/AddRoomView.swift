//
//  AddRoomView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import SwiftUI

struct AddRoomView: View {
    @Binding var project: Project?
    @State private var roomName: String = ""
    @State private var weight: Double = 1.0
    
    var body: some View {
        Form {
            Section(header: Text("Room Details")) {
                TextField("Room Name", text: $roomName)
                Slider(value: $weight, in: 0.1...10, step: 0.1) {
                    Text("Weight: \(weight, specifier: "%.1f")")
                }
            }
            
            NavigationLink(destination: AddSpaceView(spaces: $project.rooms.last ?? "")) {
                Button("Add Room") {
                    if let project = project {
                        let newRoom = Room(name: roomName, weight: weight)
                        project.rooms.append(newRoom)
                    }
                }
            }
            .disabled(roomName.isEmpty)
        }
        .navigationTitle("Add Room")
    }
}
