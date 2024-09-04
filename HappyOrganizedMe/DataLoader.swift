import SwiftUI
import SwiftData

struct DataLoader {
    static func loadRooms(for projectType: String) -> [Room] {
        // Convert projectType to enum if necessary or use raw string checks
        switch projectType {
        case ProjectType.kitchen.rawValue:
            if let roomType = KitchenRoomType(rawValue: KitchenRoomType.islandKitchen.rawValue) {
                return [
                    Room(
                        roomType: roomType, // Use rawValue to store as String
                        spaces: loadSpaces(for: roomType.rawValue) // Load spaces based on room type
                    )
                ]
            } else {
                print("Invalid room type for project type: \(projectType)")
                return []
            }
        // Handle other project types if needed
        default:
            print("Unknown project type: \(projectType)")
            return []
        }
    }
    
    static func loadSpaces(for roomType: String) -> [Space] {
        // Convert roomType to the correct enum
        switch roomType {
        case KitchenRoomType.islandKitchen.rawValue:
            return [
                Space(
                    spaceType: KitchenSpaceType.cabinets, // Use rawValue to store as String
                    subTasks: loadSubTasks(for: KitchenSpaceType.cabinets.rawValue) // Load subtasks based on space type
                ),
                Space(
                    spaceType: KitchenSpaceType.countertop, // Use rawValue to store as String
                    subTasks: loadSubTasks(for: KitchenSpaceType.countertop.rawValue) // Load subtasks based on space type
                )
            ]
        // Handle other room types if needed
        default:
            print("Unknown room type: \(roomType)")
            return []
        }
    }
    
    static func loadSubTasks(for spaceType: String) -> [SubTask] {
        // Convert spaceType to the correct enum
        switch spaceType {
        case KitchenSpaceType.cabinets.rawValue:
            return [
                SubTask(
                    subTaskType: KitchenSubTaskType.cookware,
                    space: Space(spaceType: KitchenSpaceType.countertop, subTasks: []), // Use rawValue to store as String
                    miniTasks: loadMiniTasks(for: KitchenSubTaskType.cookware.rawValue) // Load mini tasks based on subtask type
                )
            ]
        // Handle other space types if needed
        default:
            print("Unknown space type: \(spaceType)")
            return []
        }
    }
    
    static func loadMiniTasks(for subTaskType: String) -> [MiniTask] {
        // Convert subTaskType to the correct enum
        switch subTaskType {
        case KitchenSubTaskType.cookware.rawValue:
            return [
                MiniTask(miniTaskType: KitchenMiniTaskType.clean), // Use rawValue to store as String
                MiniTask(miniTaskType: KitchenMiniTaskType.sort) // Use rawValue to store as String
            ]
        // Handle other subTask types if needed
        default:
            print("Unknown subTask type: \(subTaskType)")
            return []
        }
    }
}
