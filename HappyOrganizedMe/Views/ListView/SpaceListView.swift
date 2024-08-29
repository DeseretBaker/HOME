//
//  SpaceListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/4/24.
//

import SwiftUI

struct SpaceListView: View {
    var room: Room
    
    var body: some View {
        List {
            ForEach(room.spaces) { space in
                NavigationLink(destination: SubTaskListView(space: space)) {
                    Text(space.name)
                }
            }
            .navigationTitle("\(room.name) Spaces")
        }
    }
}
struct SpaceListView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleSpaces = [
            Space(name: "Upper Shelf", roomDescription: nil, subTasks: []),
            Space(name: "Lower Shelf", roomDescription: nil, subTasks: []),
            Space(name: "Corner Cabinet", roomDescription: nil, subTasks: [])
        ]
        let sampleRoom = Room.createTestRoom(name: "Pantry",
                              imageName: "Pantry",
                              weight: 1,
                              spaces: sampleSpaces)
        
        return SpaceListView(room: sampleRoom)
    }
}

