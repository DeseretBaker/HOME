//
//  RoomListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/31/24.
//

struct RoomListView: View {
    @Environment(\.modelContext) private var modelContext
    @Binding var project: Project
    @State private var newRoomName = ""
    
    var body: some View {
        VStack {
            List {
                ForEach(project.rooms) { room in
                    Text(room.name)
                }
                .onDelete(perform: deleteRoom)
            }
            
            HStack {
                TextField("New Room", text: $newRoomName)
                Button(action: addRoom) {
                    Text("Add")
                }
            }
            .padding()
        }
    }
    
    private func addRoom() {
        let newRoom = Room(name: newRoomName)
        project.rooms.append(newRoom)
        modelContext.save()
        newRoomName = ""
    }
    
    private func deleteRoom(at offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(project.rooms[index])
        }
        modelContext.save()
    }
}
