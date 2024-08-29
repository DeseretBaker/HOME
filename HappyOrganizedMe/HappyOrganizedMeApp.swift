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
    
    var projectController = ProjectController.shared
    
    static var sharedModelContainer: ModelContainer = {
        do {
            let schema = Schema([
                Project.self,
                Room.self,
                Space.self,
                SubTask.self,
                MiniTask.self
            ])
            
            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
            
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                StartHereView() // Starting view of your app
                    .modelContainer(HappyOrganizedMeApp.sharedModelContainer) // use the static property here
                
                    .environmentObject(projectController) // inject the environment object
            }
        }
    }
}
