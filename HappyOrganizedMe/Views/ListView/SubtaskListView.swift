//
//  SubTaskListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/4/24.
//

import SwiftUI

struct SubTaskListView: View {
    var space: Space // The space that contains subTasks
    
    var body: some View {
        List {
            ForEach(space.subTasks) { subTask in
                NavigationLink(destination: MiniTaskListView(subTask: subTask)) {
                    TaskCard(title: subTask.name, imageName: "Kitchen", progress: 0.5, isComplete: false)
                }
            }
        }
        .listStyle(InsetGroupedListStyle()) // gives the list a modern grouped style
        .navigationTitle(space.name)  // sets the navigation bar title to the space's name
    }
}


struct SubTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        // Create sample subTasks
        let sampleSubTasks = [
            SubTask(name: "Upper Shelf", miniTasks: [MiniTask(name: "Dust Shelf", imageName: "sample image"), MiniTask(name: "Organize Items", imageName: "sample image")]),
            SubTask(name: "Lower Shelf", miniTasks: [MiniTask(name: "Clean Items", imageName: "sample image")])
        ]
        
        // Create a sample space and assign the sample subTasks
        let sampleSpace = Space(name: "Pantry", subTasks: sampleSubTasks)
        
        // Use the sample space in the SubTaskListView
        SubTaskListView(space: sampleSpace)
    }
}
