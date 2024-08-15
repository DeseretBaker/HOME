//
//  ProjectViewModel.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/3/24.
//

import SwiftData
import Foundation
import SwiftUI
import UserNotifications

class ProjectViewModel: ObservableObject {
    @Published var projects: [Project] = []
    @Published var baseProject: Project?
        
       
            // Define the Base projects with different types of rooms in a house
            let baseProjects: [Project] = [
                Project(name: "Kitchen", imageName: "Kitchen"),
                Project(name: "Living Room", imageName: "Livingroom"),
                Project(name: "Garage", imageName: "Garage"),
                Project(name: "Bathroom", imageName: "Bathroom"),
                Project(name: "Office", imageName: "Office"),
                Project(name: "Pantry", imageName: "Pantry"),
                Project(name: "PlayRoom", imageName: "PlayRoom"),
                Project(name: "Storage", imageName: "Storage"),
                Project(name: "DiningRoom", imageName: "DiningRoom"),
                Project(name: "Basement", imageName: "Basement")
            ]
    
        
        // Other methods like update, delete, etc.
    
    
    
    // Updates a project in the list
    func updateProject(_ updatedProject: Project, context: ModelContext) {
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

    func deleteProject(_ project: Project, context: ModelContext) {
        if let index = projects.firstIndex(where: { $0.id == project.id }) {
            projects.remove(at: index)
            saveContext(context)
        }
    }

    func addProject(_ project: Project, context: ModelContext) {
        projects.append(project)
        saveContext(context)
    }
    
    // Updates the completion status of a minitask
    func updateMinitaskStatus(minitask: Minitask, isCompleted: Bool, context: ModelContext) {
        minitask.isCompleted = isCompleted
        updateMinitask(minitask, context: context)
    }

    // Updates the completion status of a subtask
    func updateSubtaskStatus(subtask: Subtask, isCompleted: Bool, context: ModelContext) {
        subtask.isCompleted = isCompleted
        updateSubtask(subtask, context: context)
    }

    // Updates the completion status of a space
    func updateSpaceStatus(space: Space, isCompleted: Bool, context: ModelContext) {
        space.isCompleted = isCompleted
        updateSpace(space, context: context)
    }

    // Updates the completion status of a room
    func updateRoomStatus(room: Room, isCompleted: Bool, context: ModelContext) {
        room.isCompleted = isCompleted
        updateRoom(room, context: context)
    }

    // Updates the completion status of a project
    func updateProjectStatus(project: Project, isCompleted: Bool, context: ModelContext) {
        project.isCompleted = isCompleted
        updateProject(project, context: context)
    }
    
    // Saves the current state of the ModelContext
    func saveContext(_ context: ModelContext) {
        do {
            try context.save()
        } catch {
            print("Error saving context: \(error.localizedDescription)")
            // Add more robust error handling here if needed
        }
    }
    
    // Synchronizes data manually
    func syncData(with context: ModelContext) {
        saveContext(context)
    }
    
    // Removes a space from a room
    func removeSpace(from room: Room, at offsets: IndexSet, context: ModelContext) {
        room.spaces.remove(atOffsets: offsets)
        saveContext(context)
    }
    
    // Schedules a notification for a subtask
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

