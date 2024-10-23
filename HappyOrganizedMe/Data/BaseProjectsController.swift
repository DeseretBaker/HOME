//
//  BaseProjectsController.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//
import Foundation
import SwiftData

class BaseProjectsController: ObservableObject {
    private var modelContext: ModelContext

    // Initialize with ModelContext
    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }

    // Fetch base projects or create them if not found in the storage
    func baseProjects() -> [Project] {
        do {
            let fetchedProjects = try modelContext.fetch(FetchDescriptor<Project>())
            
            guard !fetchedProjects.isEmpty else {
                return createBaseProjects()
            }
            
            print("Fetched projects from storage: \(fetchedProjects.count)")

            // Ensure rooms are loaded for each project
            fetchedProjects.forEach { project in
                if project.rooms?.isEmpty == true {
                    if let projectType = project.projectType {
                        project.rooms = DataLoader.loadRooms(for: projectType)
                    } else {
                        print("Error: ProjectType is nil for project \(project.id)")
                    }
                }
            }
            
            return fetchedProjects
        } catch {
            logError("Failed to fetch projects: \(error)")
            return createBaseProjects()
        }
    }

    // Create base projects and save them in the model context
    private func createBaseProjects() -> [Project] {
        let projectTypes: [ProjectType] = [.kitchen, .livingRoom, .diningRoom, .bedroom, .office, .playroom, .storage, .garage]
        
        let projects = projectTypes.parallelMap { projectType -> Project in
            let project = Project(
                projectType: projectType,
                instructions: projectType.instructions,
                usageDescription: projectType.usageDescription,
                rooms: DataLoader.loadRooms(for: projectType)
            )
            modelContext.insert(project)
            return project
        }

        saveContext("Base projects successfully saved.")
        return projects
    }

    // Save updated or newly created projects into the persistent store
    func saveProjects(_ projects: [Project]) {
        saveContext("Projects saved successfully.")
    }

    // Delete a project from the context
    func deleteProject(_ project: Project) {
        modelContext.delete(project)
        saveContext("Project deleted successfully.")
    }

    // Helper to save the context and log the result
    private func saveContext(_ successMessage: String) {
        do {
            try modelContext.save()
            print(successMessage)
        } catch {
            logError("Failed to save context: \(error.localizedDescription)")
        }
    }
    
    // Helper to log errors
    private func logError(_ message: String) {
        print("Error: \(message)")
    }
}
