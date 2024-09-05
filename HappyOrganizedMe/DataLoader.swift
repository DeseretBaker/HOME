import SwiftUI
import SwiftData

struct DataLoader {
    static func loadRooms(for projectType: ProjectType) -> [Room] {
        // Convert projectType to enum if necessary or use raw string checks
        switch projectType {
        case ProjectType.kitchen:
            return KitchenRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.garage:
            return GarageRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.bathroom:
            return BathroomRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.storage:
            return StorageRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.bedroom:
            return BedroomRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.office:
            return OfficeType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.playroom:
            return PlayroomRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.livingRoom:
            return LivingRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type))
            }
        case ProjectType.diningRoom:
            return DiningRoomType.allCases.map { type in
                Room(roomType: type, spaces: loadSpaces(for: type)
                )
            }
        default:
            print("No rooms for \(projectType)")
            return []
        }
    }
    
    static func loadSpaces(for roomType: any RoomType) -> [Space] {
        switch roomType {
        case is KitchenRoomType:
            return KitchenSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is LivingRoomType:
            return LivingRoomSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is GarageRoomType:
            return GarageSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is BathroomRoomType:
            return BathroomSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is StorageRoomType:
            return StorageSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is OfficeType:
            return OfficeSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is PlayroomRoomType:
            return PlayroomSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is BedroomRoomType:
            return BedroomSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType))
            }
        case is DiningRoomType:
            return DiningRoomSpaceType.allCases.map { spaceType in
                Space(spaceType: spaceType, subTasks: loadSubTasks(for: spaceType)
                )
            }
        default:
            print("Unknown room type: \(roomType)")
            return []
        }
    }
    
    
    static func loadSubTasks(for spaceType: any SpaceType) -> [SubTask] {
        switch spaceType {
        case is KitchenSpaceType:
            return KitchenSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is GarageSpaceType:
            return GarageSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is BathroomSpaceType:
            return BathroomSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is StorageSpaceType:
            return StorageSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is OfficeSpaceType:
            return OfficeSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is PlayroomSpaceType:
            return PlayroomSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is BedroomSpaceType:
            return BedroomSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is LivingRoomSpaceType:
            return LivingRoomSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        case is DiningRoomSpaceType:
            return DiningRoomSubTaskType.allCases.map { subTaskType in
                SubTask(
                    subTaskType: subTaskType,
                    space: Space(spaceType: spaceType, subTasks: []), // Create an empty space or appropriate space if necessary
                    miniTasks: loadMiniTasks(for: subTaskType)
                )
            }
        default:
            print("Unknown space type: \(spaceType)")
            return []
        }
    }
    
    static func loadMiniTasks(for subTaskType: any SubTaskType) -> [MiniTask] {
        switch subTaskType {
        case is KitchenSubTaskType:
            return KitchenMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is GarageSubTaskType:
            return GarageMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is BathroomSubTaskType:
            return BathroomMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is StorageSubTaskType:
            return StorageMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is OfficeSubTaskType:
            return OfficeMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is PlayroomSubTaskType:
            return PlayroomMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is BedroomSubTaskType:
            return BedroomMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is LivingRoomSubTaskType:
            return LivingRoomMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        case is DiningRoomSubTaskType:
            return DiningRoomMiniTaskType.allCases.map { miniTaskType in
                MiniTask(miniTaskType: miniTaskType)
            }
        default:
            print("Unknown subTask type: \(subTaskType)")
            return []
        }
    }
}
