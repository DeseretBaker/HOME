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
    var modelContext: ModelContext?
    @Published var projects: [Project] = []
   
    @Published var selectedProject: Project?
    
    init() {
//        loadProjects()
    }
    
    func setModelContext(_ modelContext: ModelContext) {
        self.modelContext = modelContext
        loadProjects()
    }
    
    // Function to load projects
    func loadProjects() {
        let fetchDescriptor = FetchDescriptor<Project>()
        if let loadedProjects = try? modelContext!.fetch(fetchDescriptor), !loadedProjects.isEmpty {
            projects = loadedProjects
            print("Projects loaded: \(projects)")
            for project in projects {
                print("Project: \(project.name), Rooms: \(project.rooms.count)")
                for room in project.rooms {
                    print("Room \(room.name): \(room.spaces)")
                }
            }
        } else {
            loadBaseProjects()
        }
    }
    // Function to load base projects
    func loadBaseProjects() {
        if projects.isEmpty {
            print("Loading base projects...")
            
            
            let baseProjectsController = BaseProjectsController(modelContext: modelContext!)
            projects = baseProjectsController.baseProjects()
            print("Base projects loaded: \(projects)")
        } else {
            print("Projects already loaded: \(projects)")
        }
    }
    
    // Placeholder function to save projects to persistent storage
    func saveToPersistentStore(_ projects: [Project]) {
        do {
            guard let modelContext else { return }
            try modelContext.save()
        } catch {
            print("Error saving projects: \(error.localizedDescription)")
        }
    }
    
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
    
    func updateSubTask(_ subTask: SubTask, context: ModelContext) {
        if let projectIndex = projects.firstIndex(where: { $0.id == subTask.space?.room?.project?.id }),
           let roomIndex = projects[projectIndex].rooms.firstIndex(where: { $0.id == subTask.space?.room?.id }),
           let spaceIndex = projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == subTask.space?.id }),
           let subTaskIndex = projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subTasks.firstIndex(where: { $0.id == subTask.id }) {
            projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subTasks[subTaskIndex] = subTask
            saveContext(context)
        }
    }
    
    func updateMiniTask(_ miniTask: MiniTask, context: ModelContext) {
        if let projectIndex = projects.firstIndex(where: { $0.id == miniTask.subTask?.space?.room?.project?.id }),
           let roomIndex = projects[projectIndex].rooms.firstIndex(where: { $0.id == miniTask.subTask?.space?.room?.id }),
           let spaceIndex = projects[projectIndex].rooms[roomIndex].spaces.firstIndex(where: { $0.id == miniTask.subTask?.space?.id }),
           let subTaskIndex = projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subTasks.firstIndex(where: { $0.id == miniTask.subTask?.id }),
           let miniTaskIndex = projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subTasks[subTaskIndex].miniTasks.firstIndex(where: { $0.id == miniTask.id }) {
            projects[projectIndex].rooms[roomIndex].spaces[spaceIndex].subTasks[subTaskIndex].miniTasks[miniTaskIndex] = miniTask
            saveContext(context)
        }
    }
    
    func deleteProject(_ project: Project, context: ModelContext) {
        if let index = projects.firstIndex(where: { $0.id == project.id }) {
            projects.remove(at: index)
            saveContext(context)
        }
    }
    

    
    func updateMiniTaskStatus(miniTask: MiniTask, isCompleted: Bool, context: ModelContext) {
        miniTask.isCompleted = isCompleted
        updateMiniTask(miniTask, context: context)
    }
    
    func updateSubTaskStatus(subTask: SubTask, isCompleted: Bool, context: ModelContext) {
        subTask.isCompleted = isCompleted
        updateSubTask(subTask, context: context)
    }
    
    func updateSpaceStatus(space: Space, isCompleted: Bool, context: ModelContext) {
        space.isCompleted = isCompleted
        updateSpace(space, context: context)
    }
    
    func updateRoomStatus(room: Room, isCompleted: Bool, context: ModelContext) {
        room.isCompleted = isCompleted
        updateRoom(room, context: context)
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
    
    func scheduleNotification(for projects: Project, at date: Date) {
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.body = "Time to work on: \(projects.name)"
        content.sound = .default
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: date), repeats: false)
        
        let request = UNNotificationRequest(identifier: projects.id.uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling notification: \(error.localizedDescription)")
            } else {
                print("Notification scheduled for projects: \(projects.name)")
            }
        }
    }
}
