//
//  SubtaskListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/4/24.
//

import SwiftUI

struct SubtaskListView: View {
    var space: Space // The space that contains subtasks
    
    var body: some View {
        List {
            ForEach(space.subtasks) { subtask in
                NavigationLink(destination: MinitaskListView(subtask: subtask)) {
                    TaskCard(title: subtask.name, imageName: "Kitchen", progress: 0.5, isComplete: false)
                }
            }
        }
        .listStyle(InsetGroupedListStyle()) // gives the list a modern grouped style
        .navigationTitle(space.name)  // sets the navigation bar title to the space's name
    }
}


struct SubtaskListView_Previews: PreviewProvider {
    static var previews: some View {
        // Create sample subtasks
        let sampleSubtasks = [
            Subtask(name: "Upper Shelf", minitasks: [Minitask(name: "Dust Shelf", imageName: "sample image"), Minitask(name: "Organize Items", imageName: "sample image")]),
            Subtask(name: "Lower Shelf", minitasks: [Minitask(name: "Clean Items", imageName: "sample image")])
        ]
        
        // Create a sample space and assign the sample subtasks
        let sampleSpace = Space(name: "Pantry", subtasks: sampleSubtasks)
        
        // Use the sample space in the SubtaskListView
        SubtaskListView(space: sampleSpace)
    }
}
