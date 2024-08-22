//
// RoomDetailView
//
//




import SwiftUI

struct RoomDetailView: View {
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    
    var room: Room
    var projectID: UUID  // Assuming you have this information
    
    var body: some View {
        List {
            ForEach(room.spaces) { space in
            }
        }
        VStack(alignment: .leading) {
            // Room Name
            Text(room.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
//            
//            // Room Description
//            if let description = room.description {
//                Text(description)
//                    .font(.body)
//                    .foregroundColor(.gray)
//                    .padding(.bottom, 20)
//            }
            
            // List of Tasks/Spaces
            Text("Spaces")
                .font(.headline)
                .padding(.bottom, 5)
            
            List {
                ForEach(room.spaces) { space in
                    SpaceRowView(space: space, projectID: projectID, roomID: room.id)
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
        .navigationTitle(room.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func deleteSpaces(at offsets: IndexSet) {
        projectController.removeSpace(from: room, at: offsets, context: modelContext)
        // pass the modelContext here
    }
    
    private func addNewSpace() {
        // Implement your logic to add a new space to the room
    }
    
    struct SpaceRowView: View {
        var space: Space
        var projectID: UUID
        var roomID: UUID
        
        var body: some View {
            NavigationLink(destination: SpaceDetailView(space: space, projectID: projectID, roomID: roomID)) {
                Text(space.name)
            }
        }
    }
}

struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView(room: Room(name: "Example Room", imageName: "exampleImage", weight: 5), projectID: UUID())
            .environmentObject(ProjectController.shared)
    }
}
