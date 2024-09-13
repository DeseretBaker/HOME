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

    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }

    // Fetch base projects, or create them if not found in the storage
    func baseProjects() -> [Project] {
        do {
            // Attempt to fetch projects from storage
            let fetchedProjects = try modelContext.fetch(FetchDescriptor<Project>())
            if !fetchedProjects.isEmpty {
                print("Fetched projects from storage: \(fetchedProjects.count)")
                
                for project in fetchedProjects {
                    // Ensure rooms are correctly loaded for each project
                    if project.rooms.isEmpty {
                        project.rooms = DataLoader.loadRooms(for: project.projectType)
                    }
                }
                return fetchedProjects
            } else {
                // If no projects exist, create base projects
                return createBaseProjects()
            }
        } catch {
            // Log error if fetch fails
            print("Failed to fetch projects: \(error)")
            return createBaseProjects()
        }
    }

    // Create base projects and save them in the model context
    private func createBaseProjects() -> [Project] {
        let projectTypes: [ProjectType] = [
            .kitchen, .livingRoom, .diningRoom, .bedroom, .bathroom,
            .office, .playroom, .storage, .garage
        ]

        // Map each project type to a Project object
        let projects = projectTypes.map { projectType in
            let project = Project(
                projectType: projectType,
                instructions: "Instructions for \(projectType.name)",
                usageDescription: "Description for \(projectType.name)",
                type: "\(projectType.name) Type",
                category: "\(projectType.name) Category",
                rooms: DataLoader.loadRooms(for: projectType) // Load rooms for the project
            )
            modelContext.insert(project) // Insert the project into the model context
            return project
        }

        // Save projects to storage and handle errors
        do {
            try modelContext.save()
            print("Projects successfully saved.")
        } catch {
            // Handle and log saving errors
            print("Failed to save projects: \(error)")
        }

        return projects
    }
}
