//
// RoomDetailView
// Created by Deseret Baker
//




import SwiftUI

struct RoomDetailView: View {
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    var rooms: Room
    var projectID: UUID  // Assuming you have this information
    
    var body: some View {
        VStack(alignment: .leading) {
            // room name
            Text(rooms.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            // Room Description
            if let roomDescription = rooms.roomDescription {
                Text(roomDescription)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
            }
            
            // List of Tasks/Spaces
            Text("Spaces")
                .font(.headline)
                .padding(.bottom, 5)
            
            List {
                ForEach(rooms.spaces) { space in
                    SpaceRowView(space: space, projectID: projectID, roomsID: rooms.id)
                }
                .onDelete(perform: deleteSpaces)
            }
            
            Spacer()
            
            // Add Space Button
            Button(action: {
                addNewSpace()
            }) {
                HStack {
                    Image(systemName: "plus.circle")
                    Text("Add Space")
                }
                .font(.title2)
                .padding()
                .foregroundColor(.white)
                .background(Color.teal)
                .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .padding()
        .navigationTitle(rooms.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func deleteSpaces(at offsets: IndexSet) {
        projectController.removeSpace(from: rooms, at: offsets, context: modelContext)
        // pass the modelContext here
    }
    
    private func addNewSpace() {
        // Implement your logic to add a new space to the room
    }
    
    struct SpaceRowView: View {
        var space: Space
        var projectID: UUID
        var roomsID: UUID
        
        var body: some View {
            NavigationLink(destination: SpaceDetailView(space: space, projectID: projectID, roomID: roomsID)) {
                Text(space.name)
            }
        }
    }
}

struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView(rooms: Room.createTestRoom(name: "Example Room", imageName: "exampleImage", weight: 5), projectID: UUID())
            .environmentObject(ProjectController.shared)
    }
}
