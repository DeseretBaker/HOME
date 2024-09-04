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
