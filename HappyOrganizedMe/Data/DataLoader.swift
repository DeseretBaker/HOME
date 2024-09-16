
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
    
    // MARK: - Space Loader
    func loadSpaces(for roomType: any RoomType) -> [Space] {
        let spaceTypes: [any SpaceType]

        switch roomType {
        case is KitchenRoomType:
            spaceTypes = KitchenSpaceType.allCases // No need for casting to `any`
        case is LivingRoomType:
            spaceTypes = LivingRoomSpaceType.allCases
        case is DiningRoomType:
            spaceTypes = DiningRoomSpaceType.allCases
        case is BathroomRoomType:
            spaceTypes = BathroomSpaceType.allCases
        case is BedroomRoomType:
            spaceTypes = BedroomSpaceType.allCases
        case is OfficeRoomType:
            spaceTypes = OfficeSpaceType.allCases
        case is GarageRoomType:
            spaceTypes = GarageSpaceType.allCases
        case is StorageRoomType:
            spaceTypes = StorageSpaceType.allCases
        case is PlayroomRoomType:
            spaceTypes = PlayroomSpaceType.allCases

        // Add other cases for each room type
        default:
            spaceTypes = []
        }

        return spaceTypes.map { spaceType in
            let subTasks = loadSubTasks(for: spaceType)
            return Space(
                spaceType: spaceType,
                instructions: spaceType.instructions,
                usageDescription: spaceType.usageDescription,
                type: "\(spaceType.name) Type",
                category: "\(spaceType.name) Category",
                subTasks: subTasks
            )
        }
    }
    // MARK: - SubTask Loader
   func loadSubTasks(for spaceType: any SpaceType) -> [SubTask] {
        let subTaskTypes: [any SubTaskType]
        
        switch spaceType {
        case .kitchen:
            subTaskTypes = KitchenSubTaskType.allCases
        case .livingRoom:
            subTaskTypes = LivingRoomSubTaskType.allCases
        // Add other cases for each space type
        default:
            subTaskTypes = []
        }
        
        return subTaskTypes.map { subTaskType in
            let miniTasks = loadMiniTasks(for: subTaskType)
            return SubTask(
                subTaskType: subTaskType,
                instructions: subTaskType.instructions,
                usageDescription: subTaskType.usageDescription,
                type: "\(subTaskType.name) Type",
                category: "\(subTaskType.name) Category",
                miniTasks: miniTasks
            )
        }
    }
    
    // MARK: - MiniTask Loader
    
    func loadMiniTask(for subTaskType: any SubTaskType) -> [MiniTask] {
        let miniTaskTypes: [any MiniTaskType]
        
        switch subTaskType {
        case .kitchen:
            miniTaskTypes = KitchenMiniTaskType.allCases
        case .livingRoom:
            miniTaskTypes = LivingRoomMiniTaskType.allCases
        // Add other cases for each subtask type
        default:
            miniTaskTypes = []
        }
        
        return miniTaskTypes.map { miniTaskType in
            return MiniTask(
                miniTaskType: miniTaskType,
                usageDescription: miniTaskType.usageDescription,
                type: "\(miniTaskType.name) Type",
                category: "\(miniTaskType.name) Category"
            )
        }
    }
}
