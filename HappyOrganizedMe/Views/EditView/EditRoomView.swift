//
//  EditRoomView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/11/24.
//

import Foundation
import SwiftUI

struct EditRoomView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var room: Room
    @State private var roomName: String
    @State private var imageName: String
    
    init (room: Binding<Room>) {
        self._room = room
        _roomName = State(initialValue: room.wrappedValue.name)
        _imageName = State(initialValue: room.wrappedValue.imageName ?? "")
    }
    var body: some View {
        Form {
            Section(header: Text("Room Details")) {
                TextField("Room Name", text: $roomName)
                TextField("Image Name (Optional)", text: $imageName)
            }
            Button("Save Changes") {
                room.name = roomName
                room.imageName = imageName.isEmpty ? nil : imageName
                presentationMode.wrappedValue.dismiss() // dismiss the view after saving changes
            }
            .disabled(roomName.isEmpty)
        }
        .navigationTitle("Edit Room")
        }
    }
    
   
