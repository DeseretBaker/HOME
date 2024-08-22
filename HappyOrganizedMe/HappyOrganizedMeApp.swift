//
//  HappyOrganizedMeApp.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/14/24.
//

import SwiftUI
import SwiftData

@main
struct HappyOrganizedMeApp: App {
    
    @StateObject var projectController = ProjectController.shared
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            RoomProject.self,
            Room.self,
            Space.self,
            Subtask.self,
            Minitask.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                StartHereView() // Starting view of your app
                    .modelContainer(sharedModelContainer)
            }
            .environmentObject(projectController)
        }
    }
}
