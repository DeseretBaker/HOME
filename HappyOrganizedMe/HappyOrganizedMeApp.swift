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
            print("ModelContainer created successfully")
            
            if containerIsEmpty(container) {
                DataLoader.createAllEmptyProjects().forEach { project in
                    container.mainContext.insert(project)
                }
                try? container.mainContext.save()
            }
            
            return container
        } catch {
            print("Error: \(error)")
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    private static func containerIsEmpty(_ container: ModelContainer) -> Bool {
        let context = container.mainContext
        
        // Fetch all Project objects
        let fetchDescriptor = FetchDescriptor<Project>()
        
        do {
            let projects = try context.fetch(fetchDescriptor)
            return projects.isEmpty
        } catch {
            print("Error fetching projects: \(error)")
            return true // If an error occurs, assume the container is empty.
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView() // Starting view of your app
                .modelContainer(HappyOrganizedMeApp.sharedModelContainer) // Attach the model container
                .onAppear {
                    projectController.setModelContext(HappyOrganizedMeApp.sharedModelContainer.mainContext)
                }
        }
    }
}
