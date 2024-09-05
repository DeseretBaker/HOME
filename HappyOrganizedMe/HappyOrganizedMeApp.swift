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
    @StateObject private var projectController = ProjectController.shared
    @Environment(\.modelContext) private var modelContext

    // Shared model container for the app
    static var sharedModelContainer: ModelContainer = {
        do {
            let schema = Schema([
                Project.self,
                Room.self,
                Space.self,
                SubTask.self,
                MiniTask.self
            ])
            
            return try ModelContainer(for: schema)
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView() // Starting view of your app
                .modelContainer(HappyOrganizedMeApp.sharedModelContainer) // Attach the model container
                .environmentObject(projectController) // Provide the environment object
                .onAppear {
                    projectController.setModelContext(modelContext)
                }
        }
    }
}
