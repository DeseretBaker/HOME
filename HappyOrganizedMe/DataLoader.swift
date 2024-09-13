



import SwiftUI
import SwiftData
import Foundation

// MARK: - DataLoader Class
class DataLoader {
 
    // MARK: - Project Loader
    static func loadProjects() -> [Project] {
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
    static func loadRooms(for projectType: ProjectType) -> [Room] {
        let roomTypes: [any RoomType]
        
        // Get room types based on project type
        switch projectType {
        case .kitchen:
            roomTypes = KitchenRoomType.allRoomTypes
        case .livingRoom:
            roomTypes = LivingRoomType.allRoomTypes
        case .bedroom:
            roomTypes = BedroomRoomType.allRoomTypes
        case .bathroom:
            roomTypes = BathroomRoomType.allRoomTypes
        case .diningRoom:
            roomTypes = DiningRoomType.allRoomTypes
        case .garage:
            roomTypes = GarageRoomType.allRoomTypes
        case .office:
            roomTypes = OfficeType.allRoomTypes
        case .playroom:
            roomTypes = PlayroomRoomType.allRoomTypes
        case .storage:
            roomTypes = StorageRoomType.allRoomTypes
        case .unknown:
            roomTypes = UnknownRoomType.allRoomTypes
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
    static func loadSpaces(for roomType: any RoomType) -> [Space] {
        let spaceTypes: [any SpaceType]
        
        switch roomType {
        case is KitchenRoomType:
            spaceTypes = KitchenSpaceType.allCases
        case is LivingRoomType:
            spaceTypes = LivingRoomSpaceType.allCases
        case is BedroomRoomType:
            spaceTypes = BedroomSpaceType.allCases
        case is BathroomRoomType:
            spaceTypes = BathroomSpaceType.allCases
        case is DiningRoomType:
            spaceTypes = DiningRoomSpaceType.allCases
        case is GarageRoomType:
            spaceTypes = GarageSpaceType.allCases
        case is OfficeType:
            spaceTypes = OfficeSpaceType.allCases
        case is PlayroomRoomType:
            spaceTypes = PlayroomSpaceType.allCases
        case is StorageRoomType:
            spaceTypes = StorageSpaceType.allCases
        case is UnknownRoomType:
            spaceTypes = UnknownSpaceType.allCases
        default:
            spaceTypes = []
        }
        return spaceTypes.map { spaceType in
            let subTasks = loadSubTasks(for: spaceType) // Corrected here
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
    static func loadSubTasks(for spaceType: any SpaceType) -> [SubTask] {
        let subTaskTypes: [any SubTaskType]
        
        switch spaceType {
        case is KitchenSpaceType:
            subTaskTypes = KitchenSubTaskType.allCases
        case is LivingRoomSpaceType:
            subTaskTypes = LivingRoomSubTaskType.allCases
        case is BedroomSpaceType:
            subTaskTypes = BedroomSubTaskType.allCases
        case is BathroomSpaceType:
            subTaskTypes = BathroomSubTaskType.allCases
        case is DiningRoomSpaceType:
            subTaskTypes = DiningRoomSubTaskType.allCases
        case is GarageSpaceType:
            subTaskTypes = GarageSubTaskType.allCases
        case is OfficeSpaceType:
            subTaskTypes = OfficeSubTaskType.allCases
        case is PlayroomSpaceType:
            subTaskTypes = PlayroomSubTaskType.allCases
        case is StorageSpaceType:
            subTaskTypes = StorageSubTaskType.allCases
        case is UnknownSpaceType:
            subTaskTypes = UnknownSubTaskType.allCases
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
    static func loadMiniTasks(for subTaskType: any SubTaskType) -> [MiniTask] {
        let miniTaskTypes: [any MiniTaskType]
        
        switch subTaskType {
        case is KitchenSubTaskType:
            miniTaskTypes = KitchenMiniTaskType.allCases
        case is LivingRoomSubTaskType:
            miniTaskTypes = LivingRoomMiniTaskType.allCases
        case is BedroomSubTaskType:
            miniTaskTypes = BedroomMiniTaskType.allCases
        case is BathroomSubTaskType:
            miniTaskTypes = BathroomMiniTaskType.allCases
        case is DiningRoomSubTaskType:
            miniTaskTypes = DiningRoomMiniTaskType.allCases
        case is GarageSubTaskType:
            miniTaskTypes = GarageMiniTaskType.allCases
        case is OfficeSubTaskType:
            miniTaskTypes = OfficeMiniTaskType.allCases
        case is PlayroomSubTaskType:
            miniTaskTypes = PlayroomMiniTaskType.allCases
        case is StorageSubTaskType:
            miniTaskTypes = StorageMiniTaskType.allCases
        case is UnknownSubTaskType:
            miniTaskTypes = UnknownMiniTaskType.allCases
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
extension HappyOrganizedMeApp {
    
    static func createAllEmptyProjects() -> [Project] {
        DataLoader.loadProjects()
    }
}


