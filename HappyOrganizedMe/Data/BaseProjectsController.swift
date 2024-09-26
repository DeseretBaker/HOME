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
                    if project.rooms.isEmpty {
                        project.rooms = DataLoader.loadRooms(for: project.projectType)
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
        let projectTypes: [ProjectType] = [.kitchen, .livingRoom, .diningRoom, .bedroom, .bathroom, .office, .playroom, .storage, .garage]
        
        let projects = projectTypes.map { projectType in
            let project = Project(
                projectType: projectType,
                instructions: "Instructions for \(projectType.name)",
                usageDescription: "Description for \(projectType.name)",
                rooms: DataLoader.loadRooms(for: projectType)
            )
            modelContext.insert(project)
            return project
        }

        do {
            try modelContext.save()
            print("Projects successfully saved.")
        } catch {
            print("Failed to save projects: \(error)")
        }

        return projects
    }
}
