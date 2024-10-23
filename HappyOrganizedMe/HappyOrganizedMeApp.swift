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
    @State private var hasClickedStartHereButton: Bool = false

    // Shared model container for the app
    static var sharedModelContainer: ModelContainer = {
        do {
            // Define schema
            let schema = Schema([
                Project.self,
                Room.self,
                Space.self,
                SubTask.self,
                MiniTask.self
            ])
            let container = try ModelContainer(for: schema)
            print("ModelContainer created successfully")
            
            // Check if container is empty asynchronously
            DispatchQueue.global(qos: .background).async {
                if containerIsEmpty(container) {
                    DispatchQueue.main.async {
                        DataLoader.createAllEmptyProjects().forEach { project in
                            container.mainContext.insert(project)
                        }
                        try? container.mainContext.save()
                        print("Base projects created and saved.")
                    }
                }
            }
            
            return container
        } catch {
            print("Error: \(error)")
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    // Check if the container is empty
    private static func containerIsEmpty(_ container: ModelContainer) -> Bool {
        let context = container.mainContext
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
            ContentView()
                .modelContainer(HappyOrganizedMeApp.sharedModelContainer)
                .onAppear {
                    projectController.setModelContext(HappyOrganizedMeApp.sharedModelContainer.mainContext)
                }
        }
    }
}
