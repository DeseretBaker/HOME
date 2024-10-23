
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
        ProjectType.allCases.parallelMap { projectType in
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
        debugLog("Loading rooms for \(projectType.name): \(roomTypes.count) found")
        
        return roomTypes.parallelMap { roomType in
            let spaces = loadSpaces(for: roomType)
            debugLog("Loaded room: \(roomType.name) with \(spaces.count) spaces")
            
            return Room(
                roomType: roomType,
                instructions: roomType.instructions,
                usageDescription: roomType.usageDescription,
                spaces: spaces
            )
        }
    }

    // MARK: - Space Loader
    static func loadSpaces(for roomType: RoomTypeBox) -> [Space] {
        let spaceTypes = roomType.spaceTypes
        
        guard !spaceTypes.isEmpty else {
            debugLog("No space types found for \(roomType.name)")
            return []
        }
        
        debugLog("Loading spaces for \(roomType.name): \(spaceTypes.count) found")
        
        return spaceTypes.parallelMap { spaceType in
            let subTasks = loadSubTasks(for: spaceType)
            debugLog("Loaded space: \(spaceType.name) with \(subTasks.count) subTasks")
            
            return Space(
                spaceType: spaceType,
                instructions: spaceType.instructions,
                usageDescription: spaceType.usageDescription,
                subTasks: subTasks
            )
        }
    }

    // MARK: - SubTask Loader
    static func loadSubTasks(for spaceType: SpaceTypeBox) -> [SubTask] {
        let subTaskTypes = spaceType.subTaskTypes
        
        guard !subTaskTypes.isEmpty else {
            debugLog("No subTask types found for \(spaceType.name)")
            return []
        }
        
        debugLog("Loading sub tasks for \(spaceType.name): \(subTaskTypes.count) found")
        
        return subTaskTypes.parallelMap { subTaskType in
            let miniTasks = loadMiniTasks(for: subTaskType)
            debugLog("Loaded subTask: \(subTaskType.name) with \(miniTasks.count) miniTasks")
            
            return SubTask(
                subTaskType: subTaskType,
                instructions: subTaskType.instructions,
                usageDescription: subTaskType.usageDescription,
                miniTasks: miniTasks
            )
        }
    }

    // MARK: - MiniTask Loader
    static func loadMiniTasks(for subTaskType: SubTaskTypeBox) -> [MiniTask] {
        let miniTaskTypes = subTaskType.miniTaskTypes
        
        guard !miniTaskTypes.isEmpty else {
            debugLog("No miniTask types found for \(subTaskType.name)")
            return []
        }
        
        debugLog("Loading mini tasks for \(subTaskType.name): \(miniTaskTypes.count) found")
        
        return miniTaskTypes.parallelMap { miniTaskType in
            debugLog("Loaded miniTask: \(miniTaskType.name)")
            return MiniTask(
                miniTaskType: miniTaskType,
                instructions: miniTaskType.instructions,
                usageDescription: miniTaskType.usageDescription
            )
        }
    }

    // Centralized Debug Logging
    static func debugLog(_ message: String) {
        #if DEBUG
        print(message)
        #endif
    }
}

// MARK: - Parallel Mapping Extension for Arrays
extension Array {
    func parallelMap<T>(_ transform: (Element) -> T) -> [T] {
        var result = Array<T?>(repeating: nil, count: count)
        DispatchQueue.concurrentPerform(iterations: count) { index in
            result[index] = transform(self[index])
        }
        return result.compactMap { $0 }
    }
}
