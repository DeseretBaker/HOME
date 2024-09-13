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
            
            let container = try ModelContainer(for: schema)
            
            if containerIsEmpty(container) {
                createAllEmptyProjects().forEach { project in
                    container.mainContext.insert(project)
                }
                try? container.mainContext.save()
            }
            
            return container
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    private static func containerIsEmpty(_ container: ModelContainer) -> Bool {
        // TODO: check if container is empty (something like query the container for all Rooms and get back nothing.
        return true
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView() // Starting view of your app
                .modelContainer(HappyOrganizedMeApp.sharedModelContainer) // Attach the model container
                .onAppear {
                    projectController.setModelContext(modelContext)
                }
        }
    }
}
