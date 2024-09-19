
// HappyOrganizedMe
// DataLoader.swift
//
// Created by Deseret Baker
// Created on 7/20/24





import SwiftUI
import SwiftData
import Foundation

// MARK: - DataLoader Class
class DataLoader {
    
    // MARK: - Create All Empty Projects
func createAllEmptyProjects() -> [Project] {
        return loadProjects()
    }
    
    // MARK: - Project Loader
    func loadProjects() -> [Project] {
        return ProjectType.allCases.map { projectType in
            let rooms = loadRooms(for: projectType)
            return Project(
                projectType: projectType,
                instructions: projectType.instructions ?? "Instructions for \(projectType.name)",
                usageDescription: projectType.usageDescription ?? "Usage for \(projectType.name)",
                type: "\(projectType.name) Type",
                category: "\(projectType.name) Category",
                rooms: rooms
            )
        }
    }
    
    // MARK: - Room Loader
    func loadRooms(for projectType: ProjectType) -> [Room] {
        let roomTypes: [any RoomType]
        
        switch projectType {
        case .kitchen:
            roomTypes = KitchenRoomType.allCases
        case .livingRoom:
            roomTypes = LivingRoomType.allCases
            // Add other cases for each project type
        default:
            roomTypes = []
        }
        
        return roomTypes.map { roomType in
            let spaces = loadSpaces(for: roomType)
            return Room(
                roomType: roomType,
                instructions: roomType.instructions,
                usageDescription: roomType.usageDescription,
                type: "\(roomType.name) Type",
                category: "\(roomType.name) Category",
                spaces: spaces
            )
        }
    }
    
    func loadSpaces(for roomType: any RoomType) -> [Space] {
        // Dynamically load spaces for the given room type
        let spaceTypes = roomType.spaceTypes
        
        return spaceTypes.map { spaceType in
            let subTasks = loadSubTasks(for: spaceType)
            return Space(
                spaceType: spaceType,
                instructions: spaceType.instructions,
                usageDescription: spaceType.usageDescription,
                type: spaceType.name,
                category: spaceType.category,
                subTasks: subTasks
            )
        }
    }
    // MARK: - SubTask Loader
    func loadSubTasks(for spaceType: any SpaceType) -> [SubTask] {
        // Dynamically load sub-tasks for the given space type
        let subTaskTypes = spaceType.subTaskTypes
        
        return subTaskTypes.map { subTaskType in
            let miniTasks = loadMiniTasks(for: subTaskType)
            return SubTask(
                subTaskType: subTaskType,
                instructions: subTaskType.instructions,
                usageDescription: subTaskType.usageDescription,
                type: subTaskType.name,
                category: subTaskType.category,
                miniTasks: miniTasks
            )
        }
    }
    // MARK: - MiniTask Loader
    func loadMiniTasks(for subTaskType: SubTaskType) -> [MiniTask] {
        // Dynamically load mini-tasks for the given sub-task type
        let miniTaskTypes = subTaskType.miniTaskTypes
        
        return miniTaskTypes.map { miniTaskType in
            return MiniTask(
                miniTaskType: miniTaskType,
                usageDescription: miniTaskType.usageDescription,
                type: miniTaskType.name,
                category: miniTaskType.category
            )
        }
    }
}
