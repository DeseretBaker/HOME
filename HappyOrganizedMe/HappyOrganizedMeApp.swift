//
//  HappyOrganizedMeApp.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/25/24.
//
//
//  HappyOrganizedMeApp.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/25/24.
//
import SwiftUI
import SwiftData

@main


struct HappyOrganizedMeApp: App {
    var body: some Scene {
        WindowGroup {
            StartHereView()
                .modelContainer(for: [Project.self, Room.self, Task.self, Subtask.self, Minitask.self])
        }
    }
}
// The struct provides a preview for the StartHereView as the initial content view.

struct HappyOrganizedMeApp_Previews: PreviewProvider {
    static var previews: some View {
        StartHereView()
        // .environmentObject(ProjectViewModel() is injected to the preview to mimic the environment the views will have during the app's runtime. the .modelContainer(for: ...) ensures that the preview accurately represents the app's functionality.
        
            .environmentObject(ProjectViewModel())
            .modelContainer(for: [Project.self, Room.self, Task.self, Subtask.self, Minitask.self])
    }
}

