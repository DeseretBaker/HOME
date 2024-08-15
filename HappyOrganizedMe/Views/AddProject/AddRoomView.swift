//
//  AddRoomView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct AddRoomView: View {
    @Binding var rooms: [Room]
    @State private var roomName: String = ""
    @State private var imageName: String = ""
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("Room Details")) {
                TextField("Room Name", text: $roomName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add Room") {
                let newRoom = Room(name: roomName, imageName: imageName, spaces: [])
                rooms.append(newRoom)
            }
            
        }
        .navigationTitle("Add New Room")
    }
    
    
}

