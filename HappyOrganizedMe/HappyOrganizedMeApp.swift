//
//  HappyOrganizedMeApp.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/14/24.
//
import SwiftUI
import SwiftData

/// TODO:
/// 1. add `var roomTypes` to ProjectType, `var spaceTypes` to RoomType etc.
/// Add that variable to each protocol and then to each enum that conforms to that protocol
/// 2. Add the Box object for each Protocol. example: `RoomTypeBox` for the `RoomType` protocol
/// 2.1 Delete `SpaceTypeBox` and replace it with a `SpaceTypeBox` like the ones we created for RoomTypeBox and MiniTaskBox.
/// 3. uncomment the code in DataLoader and get it building using the newly created variables `roomTypes` and Box objects (instead of `any SomeType` -> `SomeTypeBox`) etc.
///

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
                DataLoader.createAllEmptyProjects().forEach { project in
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
                    projectController.setModelContext(modelContext)
                }
        }
    }
}
