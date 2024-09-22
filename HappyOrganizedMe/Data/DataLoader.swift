
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
    static func createAllEmptyProjects() -> [Project] {
        return loadProjects()
    }
    
    // MARK: - Project Loader
    static func loadProjects() -> [Project] {
        return ProjectType.allCases.map { projectType in
            let rooms = loadRooms(for: projectType)
            return Project(
                projectType: projectType,
                instructions: projectType.instructions ?? "Instructions for \(projectType.name)",
                usageDescription: projectType.usageDescription ?? "Usage for \(projectType.name)",
               
                rooms: rooms
            )
        }
    }
    
    // MARK: - Room Loader
    static func loadRooms(for projectType: ProjectType) -> [Room] {
        let roomTypes = projectType.roomTypes
        
        return roomTypes.map { roomType in
            let spaces = loadSpaces(for: roomType)
            return Room(
                roomType: roomType,
                instructions: roomType.instructions,
                usageDescription: roomType.usageDescription,
                
                spaces: spaces 
            )
        }
    }
    
    static func loadSpaces(for roomType: RoomTypeBox) -> [Space] {
        let spaceTypes = roomType.spaceTypes

        return spaceTypes.compactMap { spaceType in
            guard let castedSpaceType = spaceType as? (any SpaceType) else {
                // Use DefaultSpaceType as the fallback
                return Space(
                    spaceType: DefaultSpaceType(),
                    instructions: DefaultSpaceType().instructions,
                    usageDescription: DefaultSpaceType().usageDescription,
                    subTasks: loadSubTasks(for: DefaultSpaceType())
                )
            }
            
            let subTasks = loadSubTasks(for: castedSpaceType)
            return Space(
                spaceType: castedSpaceType,
                instructions: castedSpaceType.instructions ?? "Default Instructions",
                usageDescription: castedSpaceType.usageDescription ?? "Default Usage",
                subTasks: subTasks
            )
        }
    }
    // MARK: - SubTask Loader
    static func loadSubTasks(for spaceType: any SpaceType) -> [SubTask] {
        // Dynamically load sub-tasks for the given space type
        let subTaskTypes = spaceType.subTaskTypes

        return subTaskTypes.map { subTaskType in
            let miniTasks = loadMiniTasks(for: subTaskType as! (any SubTaskType))
            return SubTask(
                subTaskType: subTaskType as! (any SubTaskType),
                instructions: subTaskType.instructions,
                usageDescription: subTaskType.usageDescription,
               
                miniTasks: miniTasks
            )
        }
    }
    // MARK: - MiniTask Loader
    static func loadMiniTasks(for subTaskType: any SubTaskType) -> [MiniTask] {
        // Dynamically load mini-tasks for the given sub-task type
        let miniTaskTypes = subTaskType.miniTaskTypes

        return miniTaskTypes.map { miniTaskType in
            return MiniTask(
                miniTaskType: miniTaskType,
                usageDescription: miniTaskType.usageDescription)
        }
    }
}
