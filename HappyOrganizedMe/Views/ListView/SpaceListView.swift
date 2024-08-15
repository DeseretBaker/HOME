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
                NavigationLink(destination: SubtaskListView(space: space)) {
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
            Space(name: "Upper Shelf"),
            Space(name: "Lower Shelf"),
            Space(name: "Corner Cabinet")
        ]
        let sampleRoom = Room(name: "Pantry",
                              imageName: "Pantry",
                              spaces: sampleSpaces)
        
        SpaceListView(room: sampleRoom)
    }
}

