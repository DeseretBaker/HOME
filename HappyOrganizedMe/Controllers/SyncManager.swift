//
//  SyncManager.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
//
//import SwiftUI
//import SwiftData
//
//@MainActor
//// Function to synchronize projects with remote storage (e.g., Cloud)
//func syncProjects() {
//    let modelContext = HappyOrganizedMeApp.sharedModelContainer.mainContext // Use the shared container's main context
//    
//    // Step 1: Fetch local projects using SwiftData
//    let localProjects = fetchLocalProjects(using: modelContext)
//    
//    // Step 2: Fetch remote projects from the cloud
//    fetchRemoteProjects { cloudProjects in
//        
//        // Step 3: Compare local and remote projects to find conflicts
//        let (updatedLocalProjects, updatedCloudProjects) = resolveConflicts(localProjects: localProjects, cloudProjects: cloudProjects)
//        
//        // Step 4: Save updated local projects
//        saveProjectsToLocal(updatedLocalProjects, context: modelContext)
//        
//        // Step 5: Save updated projects to the cloud
//        saveProjectsToCloud(updatedCloudProjects)
//    }
//}
//
//// Function to fetch local projects using SwiftData
//func fetchLocalProjects(using context: ModelContext) -> [Project] {
//    let fetchDescriptor = FetchDescriptor<Project>()
//    
//    do {
//        return try context.fetch(fetchDescriptor)
//    } catch {
//        print("Error fetching local projects: \(error.localizedDescription)")
//        return []
//    }
//}
//
//// Function to fetch remote projects
//func fetchRemoteProjects(completion: @escaping ([Project]) -> Void) {
//    DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
//        
//        // Safely unwrap the optional KitchenSubTaskType and MiniTaskType
//        guard let subTaskType = KitchenSubTaskType(rawValue: "Sort Cans"),
//              let subTaskTypeBox = SubTaskTypeBox(subTaskType),
//              let miniTaskType = KitchenMiniTaskType(rawValue: "Label Cans"),
//              let miniTaskTypeBox = MiniTaskTypeBox(miniTaskType) else {
//            print("Failed to initialize SubTaskTypeBox or MiniTaskTypeBox. Returning an empty array.")
//            DispatchQueue.main.async {
//                completion([]) // Return empty if unwrapping fails
//            }
//            return
//        }
//        
//        let remoteProjects: [Project] = [
//            Project(
//                projectType: .kitchen,
//                instructions: "Organize the kitchen starting with the pantry and cabinets.",
//                usageDescription: "This project helps in organizing your kitchen for better meal preparation.",
//                rooms: [
//                    Room(
//                        roomType: .kitchen(KitchenRoomType(rawValue: "Pantry")!),
//                        instructions: "Start with sorting the pantry by food type.",
//                        usageDescription: "Keep frequently used items at eye level for easy access.",
//                        spaces: [
//                            Space(
//                                spaceType: .kitchen(KitchenPrepSpaceType(rawValue: "Shelf")!),
//                                instructions: "Organize the shelf by item category.",
//                                usageDescription: "Keep similar items together, such as canned goods or spices.",
//                                subTasks: [
//                                    SubTask(
//                                        subTaskType: subTaskTypeBox, // Safely unwrapped
//                                        instructions: "Sort cans by type and expiration date.",
//                                        usageDescription: "This helps you keep track of what you have.",
//                                        miniTasks: [
//                                            MiniTask(
//                                                miniTaskType: miniTaskTypeBox, // Safely unwrapped
//                                                instructions: "Label cans with expiration dates.",
//                                                usageDescription: "Makes it easier to see when items expire."
//                                            )
//                                        ]
//                                    )
//                                ]
//                            )
//                        ]
//                    )
//                ]
//            )
//        ]
//        
//        // Return the populated projects
//        DispatchQueue.main.async {
//            completion(remoteProjects)
//        }
//    }
//}
//
//// Function to resolve conflicts between local and remote projects
//func resolveConflicts(localProjects: [Project], cloudProjects: [Project]) -> ([Project], [Project]) {
//    // Example conflict resolution: Last Write Wins (LWW) or custom merge logic
//    let updatedLocalProjects = localProjects
//    let updatedCloudProjects = cloudProjects
//    
//    // Implement your conflict resolution strategy here
//    return (updatedLocalProjects, updatedCloudProjects)
//}
//
//// Function to save projects to local storage using SwiftData
//func saveProjectsToLocal(_ projects: [Project], context: ModelContext) {
//    do {
//        for project in projects {
//            context.insert(project) // Insert or update the resolved project
//        }
//        try context.save()
//        print("Local projects saved successfully.")
//    } catch {
//        print("Error saving local projects: \(error.localizedDescription)")
//    }
//}
//
//// Placeholder function to save projects to the cloud
//func saveProjectsToCloud(_ projects: [Project]) {
//    // Implement your cloud saving logic here
//    print("Saving projects to cloud...")
//}
