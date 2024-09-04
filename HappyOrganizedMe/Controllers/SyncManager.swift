//
//  SyncManager.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI
import SwiftData

@MainActor
// Function to synchronize projects with remote storage (e.g., Cloud)
func syncProjects() {
    let modelContext = HappyOrganizedMeApp.sharedModelContainer.mainContext // Use the shared container's main context

    // Step 1: Fetch local projects using SwiftData
    let localProjects = fetchLocalProjects(using: modelContext)

    // Step 2: Fetch remote projects from the cloud
    fetchRemoteProjects { cloudProjects in
        
        // Step 3: Compare local and remote projects to find conflicts
        let (updatedLocalProjects, updatedCloudProjects) = resolveConflicts(localProjects: localProjects, cloudProjects: cloudProjects)
        
        // Step 4: Save updated local projects
        saveProjectsToLocal(updatedLocalProjects, context: modelContext)

        // Step 5: Save updated projects to the cloud
        saveProjectsToCloud(updatedCloudProjects)
    }
}

// Function to fetch local projects using SwiftData
func fetchLocalProjects(using context: ModelContext) -> [Project] {
    // Fetch projects from the model context
    let fetchDescriptor = FetchDescriptor<Project>()
    
    do {
        return try context.fetch(fetchDescriptor)
    } catch {
        print("Error fetching local projects: \(error.localizedDescription)")
        return []
    }
}

// Placeholder function to fetch remote projects (e.g., from Cloud)
func fetchRemoteProjects(completion: @escaping ([Project]) -> Void) {
    // Simulate fetching projects from a cloud or remote server
    DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
        let remoteProjects: [Project] = [
            Project(projectType: .kitchen, rooms: []),
            // Add more simulated remote projects if needed
        ]
        completion(remoteProjects)
    }
}

// Function to resolve conflicts between local and remote projects
func resolveConflicts(localProjects: [Project], cloudProjects: [Project]) -> ([Project], [Project]) {
    // Example conflict resolution: Last Write Wins (LWW) or custom merge logic
    let updatedLocalProjects = localProjects
    let updatedCloudProjects = cloudProjects

    // Implement your conflict resolution strategy here

    return (updatedLocalProjects, updatedCloudProjects)
}

// Function to save projects to local storage using SwiftData
func saveProjectsToLocal(_ projects: [Project], context: ModelContext) {
    do {
        for project in projects {
            context.insert(project) // Insert or update the resolved project
        }
        try context.save()
    } catch {
        print("Error saving local projects: \(error.localizedDescription)")
    }
}

// Placeholder function to save projects to the cloud
func saveProjectsToCloud(_ projects: [Project]) {
    // Implement your cloud saving logic here
    print("Saving projects to cloud...")
}
