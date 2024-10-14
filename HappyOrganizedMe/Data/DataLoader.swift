
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
                instructions: projectType.instructions,
                usageDescription: projectType.usageDescription,
                rooms: rooms
            )
        }
    }
    
    // MARK: - Room Loader
    static func loadRooms(for projectType: ProjectType) -> [Room] {
        let roomTypes = projectType.roomTypes
        
        #if DEBUG
        print("Loading rooms for \(projectType.name): \(roomTypes.count) found")
        #endif
        
        let rooms: [Room] = roomTypes.map { roomType in
            let spaces = loadSpaces(for: roomType)
            
            #if DEBUG
            print("Loaded room: \(roomType.name) with \(spaces.count) spaces")
            #endif
            
            return Room(
                roomType: roomType,
                instructions: roomType.instructions,
                usageDescription: roomType.usageDescription,
                spaces: spaces
            )
        }
        #if DEBUG
        print("Total rooms loaded for project \(projectType.name): \(rooms.count)")
        #endif
        return rooms
    }
    
    // MARK: - Space Loader
    static func loadSpaces(for roomType: RoomTypeBox) -> [Space] {
        let spaceTypes = roomType.spaceTypes
        
        guard !spaceTypes.isEmpty else {
            print("No space types found for \(roomType.name)")
            return []
        }
        
        #if DEBUG
        print("Loading spaces for \(roomType.name): \(spaceTypes.count) found")
        #endif
        
        let spaces: [Space] = spaceTypes.map { spaceType in
            let subTasks = loadSubTasks(for: spaceType) // Correctly calling loadSubTasks
            
            #if DEBUG
            print("Loaded space: \(spaceType.name) with \(subTasks.count) subTasks")
            #endif
            
            return Space(
                spaceType: spaceType,
                instructions: spaceType.instructions,
                usageDescription: spaceType.usageDescription,
                subTasks: subTasks
            )
        }
        
        #if DEBUG
        print("Total spaces loaded for project  \(roomType.name): \(spaces.count)")
        #endif
        return spaces
    }
    
    // MARK: - SubTask Loader
    static func loadSubTasks(for spaceType: SpaceTypeBox) -> [SubTask] {
        let subTaskTypes = spaceType.subTaskTypes
        
        guard !subTaskTypes.isEmpty else {
            print("No subTask types found for \(spaceType.name)")
            return []
        }
        
        #if DEBUG
        print("Loading sub tasks for \(spaceType.name): \(subTaskTypes.count) found")
        #endif
        
        let subTasks: [SubTask] = subTaskTypes.map { subTaskType in
            let miniTasks = loadMiniTasks(for: subTaskType) // Correctly calling loadMiniTasks
            
            #if DEBUG
            print("Loaded subTask: \(subTaskType.name) with \(miniTasks.count) miniTasks")
            #endif
            
            return SubTask(
                subTaskType: subTaskType,
                instructions: subTaskType.instructions,
                usageDescription: subTaskType.usageDescription,
                miniTasks: miniTasks
            )
        }
        
        #if DEBUG
        print("Total subTasks loaded for project  \(spaceType.name): \(subTasks.count)")
        #endif
        return subTasks
    }
    
    // MARK: - MiniTask Loader
    static func loadMiniTasks(for subTaskType: SubTaskTypeBox) -> [MiniTask] {
        let miniTaskTypes = subTaskType.miniTaskTypes
        
        guard !miniTaskTypes.isEmpty else {
            print("No miniTask types found for \(subTaskType.name)")
            return []
        }
        
        #if DEBUG
        print("Loading mini tasks for \(subTaskType.name): \(miniTaskTypes.count) found")
        #endif
        
        return miniTaskTypes.map { miniTaskType in
            
            #if DEBUG
            print("Loaded miniTask: \(miniTaskType.name)")
            #endif
            
            return MiniTask(
                miniTaskType: miniTaskType,
                instructions: miniTaskType.instructions,
                usageDescription: miniTaskType.usageDescription
            )
        }
    }
}
