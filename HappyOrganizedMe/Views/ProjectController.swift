//
//  ProjectController.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/3/24.
//

import SwiftData
import Foundation
import SwiftUI
import UserNotifications

class ProjectController: ObservableObject {
    static let shared = ProjectController()
    var modelContext: ModelContext?  // Direct reference to modelContext
    
    @Published var projects: [Project] = []
    @Published var isLoading: Bool = false
    @Published var selectedProject: Project?

    private init() {
        // Load projects can be called later via setModelContext()
    }

    func setModelContext(_ modelContext: ModelContext) {
        self.modelContext = modelContext
        loadProjects()
    }

    // Function to load projects
    func loadProjects() {
        guard let modelContext = modelContext else { return }
        isLoading = true
        
        let fetchDescriptor = FetchDescriptor<Project>()
        do {
            let loadedProjects = try modelContext.fetch(fetchDescriptor)
            if loadedProjects.isEmpty {
                loadBaseProjects()
            } else {
                projects = loadedProjects
            }
        } catch {
            print("Error loading projects: \(error)")
        }
        isLoading = false
    }
    
    // Function to load base projects
    func loadBaseProjects() {
        guard let context = modelContext else {
            print("Error: ModelContext is not set.")
            return
        }
        isLoading = true
        
        if projects.isEmpty {
            print("Loading base projects...")
            
            let baseProjectsController = BaseProjectsController(modelContext: context)
            projects = baseProjectsController.baseProjects()
            print("Base projects loaded: \(projects)")
        } else {
            print("Projects already loaded: \(projects)")
        }
        isLoading = false
    }
    
    // Save to persistent storage
    func saveToPersistentStore() {
        guard let context = modelContext else { return }
        do {
            try context.save()
        } catch {
            print("Error saving projects: \(error.localizedDescription)")
        }
    }
    
    // Methods to update project, room, space, etc.
    func updateProject(_ updatedProject: Project) {
        if let projectIndex = projects.firstIndex(where: { $0.id == updatedProject.id }) {
            projects[projectIndex] = updatedProject
            saveToPersistentStore()
        }
    }

    func updateRoom(_ room: Room) {
        if let projectIndex = projects.firstIndex(where: { $0.id == room.project?.id }),
           let roomIndex = projects[projectIndex].rooms?.firstIndex(where: { $0.id == room.id }) {
            projects[projectIndex].rooms?[roomIndex] = room
            saveToPersistentStore()
        }
    }

    func updateSpace(_ space: Space) {
        if let projectIndex = projects.firstIndex(where: { $0.id == space.room?.project?.id }),
           let roomIndex = projects[projectIndex].rooms?.firstIndex(where: { $0.id == space.room?.id }),
           let spaceIndex = projects[projectIndex].rooms?[roomIndex].spaces?.firstIndex(where: { $0.id == space.id }) {
            projects[projectIndex].rooms?[roomIndex].spaces?[spaceIndex] = space
            saveToPersistentStore()
        }
    }
    
    func updateSubTask(_ subTask: SubTask) {
        if let projectIndex = projects.firstIndex(where: { $0.id == subTask.space?.room?.project?.id }),
           let roomIndex = projects[projectIndex].rooms?.firstIndex(where: { $0.id == subTask.space?.room?.id}),
           let spaceIndex = projects[projectIndex].rooms?[roomIndex].spaces?.firstIndex(where: {$0.id == subTask.space?.id }),
           let subTaskIndex = projects[projectIndex].rooms?[roomIndex].spaces?[spaceIndex].subTasks?.firstIndex(where: {$0.id == subTask.id }) {
            projects[projectIndex].rooms?[roomIndex].spaces?[spaceIndex].subTasks?[subTaskIndex] = subTask
            saveToPersistentStore()
        }
    }
    
    func updateMiniTask(_ miniTask: MiniTask) {
        if let projectIndex = projects.firstIndex(where: { $0.id == miniTask.subTask?.space?.room?.project?.id }),
           let roomIndex = projects[projectIndex].rooms?.firstIndex(where: { $0.id == miniTask.subTask?.space?.room?.id}),
           let spaceIndex = projects[projectIndex].rooms?[roomIndex].spaces?.firstIndex(where: {$0.id == miniTask.subTask?.space?.id }),
           let subTaskIndex = projects[projectIndex].rooms?[roomIndex].spaces?[spaceIndex].subTasks?.firstIndex(where: {$0.id == miniTask.subTask?.id }),
           let miniTaskIndex = projects[projectIndex].rooms?[roomIndex].spaces?[spaceIndex].subTasks?[subTaskIndex].miniTasks?.firstIndex(where: {$0.id == miniTask.id }) {
            projects[projectIndex].rooms?[roomIndex].spaces?[spaceIndex].subTasks?[subTaskIndex].miniTasks?[miniTaskIndex] = miniTask
            saveToPersistentStore()
        }
    }

    // Similarly add update methods for SubTask and MiniTask

    func deleteProject(_ project: Project) {
        if let index = projects.firstIndex(where: { $0.id == project.id }) {
            projects.remove(at: index)
            saveToPersistentStore()
        }
    }

    // Sync and handle cloud conflicts
    func syncProjects() {
        guard let modelContext = modelContext else { return }
        do {
            try modelContext.save()
            handleCloudSyncConflict()
        } catch {
            print("Error syncing projects: \(error.localizedDescription)")
        }
    }

    private func handleCloudSyncConflict() {
        guard let modelContext = modelContext else { return }
        do {
            let fetchDescriptor = FetchDescriptor<Project>()
            let latestProjects = try modelContext.fetch(fetchDescriptor)
            
            if conflictsExist(with: latestProjects) {
                resolveConflicts(with: latestProjects)
                try modelContext.save()

                if modelContext.hasChanges {
                    print("Conflicts resolved, re-syncing projects...")
                    syncProjects()  // Re-sync only if there were changes
                }
            }
        } catch {
            print("Failed to handle cloud sync conflict: \(error.localizedDescription)")
        }
    }

    private func resolveConflicts(with latestProjects: [Project]) {
        // Implement custom conflict resolution logic
    }

    private func conflictsExist(with latestProjects: [Project]) -> Bool {
        // Check for conflicts and return true if they exist
        return false  // Replace with actual conflict detection logic
    }
}
