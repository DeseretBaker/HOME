
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
        
        print("Loading rooms for \(projectType.name): \(roomTypes.count) found")
        
        let rooms = roomTypes.map { roomType in
            let spaces = loadSpaces(for: roomType)
            
            print("Loaded room: \(roomType.name) with \(spaces.count) spaces")
            
            return Room(
                roomType: roomType,
                instructions: roomType.instructions,
                usageDescription: roomType.usageDescription,
                spaces: spaces
            )
        }
        print("Total rooms loaded for project \(projectType.name): \(rooms.count)")
            return rooms
    }
    
    // MARK: - Space Loader
    static func loadSpaces(for roomType: RoomTypeBox) -> [Space] {
        let spaceTypes = roomType.spaceTypes
        print("Loading spaces for \(roomType.name): \(spaceTypes.count) found")
        
        let spaces = spaceTypes.map { spaceType in
            let subTasks = loadSubTasks(for: spaceType) // Correctly calling loadSubTasks
            
            print("Loaded space: \(spaceType.name) with \(subTasks.count) subTasks")
            
            return Space(
                spaceType: spaceType,
                instructions: spaceType.instructions,
                usageDescription: spaceType.usageDescription,
                subTasks: subTasks
            )
        }
        print("Total spaces loaded for project  \(roomType.name): \(spaces.count)")
            return spaces
    }
    
    // MARK: - SubTask Loader
    static func loadSubTasks(for spaceType: SpaceTypeBox) -> [SubTask] {
        let subTaskTypes = spaceType.subTaskTypes
        print("Loading sub tasks for \(spaceType.name): \(subTaskTypes.count) found")
        
        let subTasks = subTaskTypes.map { subTaskType in
            let miniTasks = loadMiniTasks(for: subTaskType) // Correctly calling loadMiniTasks
            
            print("Loaded subTask: \(subTaskType.name) with \(miniTasks.count) miniTasks")
            
            return SubTask(
                subTaskType: subTaskType,
                instructions: subTaskType.instructions,
                usageDescription: subTaskType.usageDescription,
                miniTasks: miniTasks
            )
        }
        print("Total subTasks loaded for project  \(spaceType.name): \(subTasks.count)")
            return subTasks
    }
    
    // MARK: - MiniTask Loader
    static func loadMiniTasks(for subTaskType: SubTaskTypeBox) -> [MiniTask] {
        let miniTaskTypes = subTaskType.miniTaskTypes
        print("Loading mini tasks for \(subTaskType.name): \(miniTaskTypes.count) found")
        
        return miniTaskTypes.map { miniTaskType in
            print("Loaded miniTask: \(miniTaskType.name)")
            
            return MiniTask(
                miniTaskType: miniTaskType,
                instructions: miniTaskType.instructions,
                usageDescription: miniTaskType.usageDescription
            )
        }
    }
}
