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

    func baseProjects() -> [Project] {
        if let fetchedProjects = try? modelContext.fetch(FetchDescriptor<Project>()), !fetchedProjects.isEmpty {
            print("Fetched projects from storage: \(fetchedProjects.count)")
            for project in fetchedProjects {
                // Ensure rooms are correctly fetched for each project
                if project.rooms.isEmpty {
                    project.rooms = DataLoader.loadRooms(for: project.projectType)
                }
            }
            return fetchedProjects
        } else {
            return createBaseProjects()
        }
    }

    private func createBaseProjects() -> [Project] {
        let projectTypes: [ProjectType] = [
            .kitchen, .livingRoom, .diningRoom, .bedroom, .bathroom,
            .office, .playroom, .storage, .garage
        ]

        let projects = projectTypes.map { projectType in
            let project = Project(projectType: projectType, rooms: DataLoader.loadRooms(for: projectType))
            modelContext.insert(project)
            return project
        }

        do {
            try modelContext.save()
        } catch {
            print("Failed to save projects: \(error)")
        }

        return projects
    }
}
