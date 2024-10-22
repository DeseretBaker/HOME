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
            
            if !fetchedProjects.isEmpty {
                print("Fetched projects from storage: \(fetchedProjects.count)")
                
                for project in fetchedProjects {
                    // Ensure rooms are loaded if they are empty
                    if project.rooms?.isEmpty == true {
                        guard let unwrappedProjectType = project.projectType else {
                            print("Error: ProjectType is nil for project \(project.id)")
                            continue // Skip this project if projectType is nil
                        }
                        project.rooms = DataLoader.loadRooms(for: unwrappedProjectType)
                    }
                }
                return fetchedProjects
            } else {
                return createBaseProjects()
            }
        } catch {
            print("Failed to fetch projects: \(error)")
            return createBaseProjects()
        }
    }

    // Create base projects and save them in the model context
    private func createBaseProjects() -> [Project] {
        // Define the base project types
        let projectTypes: [ProjectType] = [.kitchen, .livingRoom, .diningRoom, .bedroom, .office, .playroom, .storage, .garage]
        
        let projects = projectTypes.map { projectType in
            let project = Project(
                projectType: projectType,
                instructions: projectType.instructions,
                usageDescription: projectType.usageDescription,
                rooms: DataLoader.loadRooms(for: projectType)
            )
            modelContext.insert(project)
            return project
        }

        do {
            try modelContext.save()
            print("Base projects successfully saved.")
        } catch {
            print("Failed to save base projects: \(error.localizedDescription)")
        }

        return projects
    }

    // Save updated or newly created projects into the persistent store
    func saveProjects(_ projects: [Project]) {
        do {
            try modelContext.save()
            print("Projects saved successfully.")
        } catch {
            print("Failed to save projects: \(error.localizedDescription)")
        }
    }
    
    // Delete a project from the context
    func deleteProject(_ project: Project) {
        modelContext.delete(project)
        saveProjects([])
    }
}
