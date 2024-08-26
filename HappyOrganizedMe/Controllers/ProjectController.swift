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
    
    @Published var projects: [RoomProject] = []
    @Published var selectedProject: RoomProject?
    
    init() {
        loadProjects()
    }
    
    // Function to load projects
    func loadProjects() {
        // Attempt to load projects from persistent storage
        if let loadedProjects = loadFromPersistentStore() {
            projects = loadedProjects
        } else {
            loadBaseProjects()
        }
    }
    // Function to load base projects
    func loadBaseProjects() {
        if projects.isEmpty {
            print("Loading base projects...")

            // Define baseProjects directly as a variable
            let baseProjects: [RoomProject] = [
                RoomProject(name: "Kitchen", rooms: [Room(name: "Island Kitchen", weight: 5.0)]),
                // Add other predefined RoomProject objects as needed
                RoomProject(name: "Living Room", rooms: [Room(name: "Open Plan Living Room", weight: 4.0)])
            ]

            // Append base projects to the main projects array
            projects.append(contentsOf: baseProjects)

            // Save to persistent store
            saveToPersistentStore(projects)
            print("Base projects loaded: \(projects)")
        } else {
            print("Projects already loaded: \(projects)")
        }
    }
    // Placeholder function to load projects from persistent storage
    func loadFromPersistentStore() -> [RoomProject]? {
        // Here you would implement the code to load projects from your storage solution
        return nil
    }
    
    // Placeholder function to save projects to persistent storage
    func saveToPersistentStore(_ projects: [RoomProject]) {
        // Here you would implement the code to save the projects array to your storage solution
}
func updateProject(_ updatedProject: RoomProject, context: ModelContext) {
    if let projectIndex = projects.firstIndex(where: { $0.id == updatedProject.id }) {
        projects[projectIndex] = updatedProject
        saveContext(context)
    }
}

func updateRoom(_ room: Room, context: ModelContext) {
    if let projectIndex = projects.firstIndex(where: { $0.id == room.project?.id }),
       let roomIndex = projects[projectIndex].rooms.firstIndex(where: { $0.id == room.id }) {
        projects[projectIndex].rooms[roomIndex] = room
        saveContext(context)
    }
}

func updateSpace(_ space: Space, context: ModelContext) {
    if let projectIndex = projects.firstIndex(where: { $0.id == space.room?.project?.id }),
       let roomIndex = projects[projectIndex].rooms.firstIndex(where: { $0.id == space.room?.id }),
       let spaceIndex = projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == space.id }) {
        projects[projectIndex].rooms[roomIndex].spaces[spaceIndex] = space
        saveContext(context)
    }
}

func updateSubtask(_ subtask: Subtask, context: ModelContext) {
    if let projectIndex = projects.firstIndex(where: { $0.id == subtask.space?.room?.project?.id }),
       let roomIndex = projects[projectIndex].rooms.firstIndex(where: { $0.id == subtask.space?.room?.id }),
       let spaceIndex = projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == subtask.space?.id }),
       let subtaskIndex = projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks.firstIndex(where: { $0.id == subtask.id }) {
        projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks[subtaskIndex] = subtask
        saveContext(context)
    }
}

func updateMinitask(_ minitask: Minitask, context: ModelContext) {
    if let projectIndex = projects.firstIndex(where: { $0.id == minitask.subtask?.space?.room?.project?.id }),
       let roomIndex = projects[projectIndex].rooms.firstIndex(where: { $0.id == minitask.subtask?.space?.room?.id }),
       let spaceIndex = projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == minitask.subtask?.space?.id }),
       let subtaskIndex = projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks.firstIndex(where: { $0.id == minitask.subtask?.id }),
       let minitaskIndex = projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks[subtaskIndex].minitasks.firstIndex(where: { $0.id == minitask.id }) {
        projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subtasks[subtaskIndex].minitasks[minitaskIndex] = minitask
        saveContext(context)
    }
}

func deleteProject(_ project: RoomProject, context: ModelContext) {
    if let index = projects.firstIndex(where: { $0.id == project.id }) {
        projects.remove(at: index)
        saveContext(context)
    }
}

func addProject(_ project: RoomProject, context: ModelContext) {
    projects.append(project)
    saveContext(context)
}

func updateMinitaskStatus(minitask: Minitask, isCompleted: Bool, context: ModelContext) {
    minitask.isCompleted = isCompleted
    updateMinitask(minitask, context: context)
}

func updateSubtaskStatus(subtask: Subtask, isCompleted: Bool, context: ModelContext) {
    subtask.isCompleted = isCompleted
    updateSubtask(subtask, context: context)
}

func updateSpaceStatus(space: Space, isCompleted: Bool, context: ModelContext) {
    space.isCompleted = isCompleted
    updateSpace(space, context: context)
}

func updateRoomStatus(room: Room, isCompleted: Bool, context: ModelContext) {
    room.isCompleted = isCompleted
    updateRoom(room, context: context)
}

func updateProjectStatus(project: RoomProject, isCompleted: Bool, context: ModelContext) {
    project.isCompleted = isCompleted
    updateProject(project, context: context)
}

func saveContext(_ context: ModelContext) {
    do {
        try context.save()
    } catch {
        print("Error saving context: \(error.localizedDescription)")
    }
}

func syncData(with context: ModelContext) {
    saveContext(context)
}

func removeSpace(from room: Room, at offsets: IndexSet, context: ModelContext) {
    room.spaces.remove(atOffsets: offsets)
    saveContext(context)
}

func scheduleNotification(for subtask: Subtask, at date: Date) {
    let content = UNMutableNotificationContent()
    content.title = "Reminder"
    content.body = "Time to work on: \(subtask.name)"
    content.sound = .default
    
    let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: date), repeats: false)
    
    let request = UNNotificationRequest(identifier: subtask.id.uuidString, content: content, trigger: trigger)
    
    UNUserNotificationCenter.current().add(request) { error in
        if let error = error {
            print("Error scheduling notification: \(error.localizedDescription)")
        } else {
            print("Notification scheduled for subtask: \(subtask.name)")
        }
    }
}
}