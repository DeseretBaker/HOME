//
//  RoomListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/3/24.
//
import SwiftUI

struct RoomListView: View {
    var project: Project
    
    var body: some View {
        List(project.rooms) { room in
            NavigationLink(destination: SpaceListView(room: room)) {
             Text(room.name)
            }
        }
        .navigationTitle("\(project.name) Rooms")
    }
}

struct RoomListView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListView(project: Project(projectType: .kitchen, rooms: []))
    }
}
     
