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
            return fetchedProjects
        } else {
            return createBaseProjects()
        }
    }

    private func createBaseProjects() -> [Project] {
        // Manually define the array of all project types
        let projectTypes: [ProjectType] = [
            .kitchen, .garage, .bathroom, .storage, .bedroom,
            .office, .playroom, .livingRoom, .diningRoom
        ]

        let projects = projectTypes.map { projectType in
            let project = Project(projectType: projectType, rooms: [])
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
class BaseProjects {
    // Singleton pattern to access BaseProjects globally
    static let shared = BaseProjects()

    private(set) var projects: [Project] = []

    private init() {
        loadDefaultProjects()
    }

    private func loadDefaultProjects() {
        // Initialize your base projects here
        let kitchenProject = Project(projectType: .kitchen, rooms: [])
        kitchenProject.rooms = DataLoader.loadRooms(for: kitchenProject.projectType.rawValue)

        // Add more predefined projects
        projects = [kitchenProject] // Example array; add other projects similarly
    }

    func addProject(_ project: Project) {
        projects.append(project)
    }

    func deleteProject(_ project: Project) {
        if let index = projects.firstIndex(where: { $0.id == project.id }) {
            projects.remove(at: index)
        }
    }

    func updateProject(_ project: Project) {
        if let index = projects.firstIndex(where: { $0.id == project.id }) {
            projects[index] = project
        }
    }
}
