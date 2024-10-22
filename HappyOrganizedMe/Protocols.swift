//
//  Protocols.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/18/24.
//

import Foundation
// Define your protocols here

// MARK: - Room Type

protocol RoomType: Codable, CaseIterable, Identifiable, Displayable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    var spaceTypes: [SpaceTypeBox] { get }
    var progress: Double { get }
    init?(rawValue: String)
    
}

@dynamicMemberLookup
enum RoomTypeBox: Codable {
    
    case kitchen(KitchenRoomType)
    case dining(DiningRoomType)
//    case bathroom(BathroomRoomType)
    case living(LivingRoomType)
    case bedroom(BedroomRoomType)
    case storage(StorageRoomType)
    case office(OfficeRoomType)
    case garage(GarageRoomType)
    case playroom(PlayroomRoomType)
    case comingSoon(ComingSoonRoomType)
    
    var roomType: any RoomType {
        switch self {
        case .kitchen(let kitchen): return kitchen
        case .dining(let dining): return dining
//        case .bathroom(let bathroom): return bathroom
        case .living(let living): return living
        case .bedroom(let bedroom): return bedroom
        case .storage(let storage): return storage
        case .office(let office): return office
        case .garage(let garage): return garage
        case .playroom(let playroom): return playroom
        case .comingSoon(let comingSoon): return comingSoon
        }
    }
    
    init?(_ roomType: any RoomType) {
        if let kitchen = roomType as? KitchenRoomType {
            self = .kitchen(kitchen)
        } else if let dining = roomType as? DiningRoomType {
            self = .dining(dining)
//        } else if let bathroom = roomType as? BathroomRoomType {
//            self = .bathroom(bathroom)
        } else if let living = roomType as? LivingRoomType {
            self = .living(living)
        } else if let bedroom = roomType as? BedroomRoomType {
            self = .bedroom(bedroom)
        } else if let storage = roomType as? StorageRoomType {
            self = .storage(storage)
        } else if let office = roomType as? OfficeRoomType {
            self = .office(office)
        } else if let garage = roomType as? GarageRoomType {
            self = .garage(garage)
        } else if let playroom = roomType as? PlayroomRoomType {
            self = .playroom(playroom)
        } else if let comingSoon = roomType as? ComingSoonRoomType {
            self = .comingSoon(comingSoon)
        } else {
            return nil
            
        }
    }
    var id: UUID { roomType.id}
    var name: String { roomType.name }
    var imageName: String { roomType.imageName }
    var instructions: String { roomType.instructions }
    var usageDescription: String { roomType.usageDescription }
    var weight: Double { roomType.weight }
    var progress: Double { roomType.progress }
    var isCompleted: Bool { roomType.isCompleted }

    
    subscript<T>(dynamicMember keyPath: KeyPath<any RoomType, T>) -> T {
        roomType[keyPath: keyPath]
    }
    
}


// MARK: Space Type

protocol SpaceType: Codable, CaseIterable, Identifiable, Displayable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    var subTaskTypes: [SubTaskTypeBox] { get }
    var progress: Double { get }
    var isCompleted: Bool { get }
    init?(rawValue: String)
}
@dynamicMemberLookup
enum SpaceTypeBox: Codable {
    case kitchen(KitchenSpaceType)
    case dining(DiningRoomSpaceType)
//    case bathroom(BathroomSpaceType)
    case living(LivingRoomSpaceType)
    case bedroom(BedroomSpaceType)
    case storage(StorageSpaceType)
    case office(OfficeSpaceType)
    case garage(GarageSpaceType)
    case playroom(PlayroomSpaceType)
    case comingSoon(ComingSoonSpaceType)
    
    var spaceType: any SpaceType {
        switch self {
        case .kitchen(let kitchen): return kitchen
        case .dining(let dining): return dining
//        case .bathroom(let bathroom): return bathroom
        case .living(let living): return living
        case .bedroom(let bedroom): return bedroom
        case .storage(let storage): return storage
        case .office(let office): return office
        case .garage(let garage): return garage
        case .playroom(let playroom): return playroom
        case .comingSoon(let comingSoon): return comingSoon
        }
    }
    
    init?(_ spaceType: any SpaceType) {
        if let kitchen = spaceType as? KitchenSpaceType {
            self = .kitchen(kitchen)
        } else if let dining = spaceType as? DiningRoomSpaceType {
            self = .dining(dining)
//        } else if let bathroom = spaceType as? BathroomSpaceType {
//            self = .bathroom(bathroom)
        } else if let living = spaceType as? LivingRoomSpaceType {
            self = .living(living)
        } else if let bedroom = spaceType as? BedroomSpaceType {
            self = .bedroom(bedroom)
        } else if let storage = spaceType as? StorageSpaceType {
            self = .storage(storage)
        } else if let office = spaceType as? OfficeSpaceType {
            self = .office(office)
        } else if let garage = spaceType as? GarageSpaceType {
            self = .garage(garage)
        } else if let playroom = spaceType as? PlayroomSpaceType {
            self = .playroom(playroom)
        } else if let comingSoon = spaceType as? ComingSoonSpaceType {
            self = .comingSoon(comingSoon)
        } else {
            return nil
            
        }
    }
    var id: UUID { spaceType.id}
    var name: String { spaceType.name }
    var imageName: String { spaceType.imageName }
    var instructions: String { spaceType.instructions }
    var usageDescription: String { spaceType.usageDescription }
    var weight: Double { spaceType.weight }
    var progress: Double { spaceType.progress }
    var isCompleted: Bool { spaceType.isCompleted }

    
    subscript<T>(dynamicMember keyPath: KeyPath<any SpaceType, T>) -> T {
        spaceType[keyPath: keyPath]
    }
    
}

// MARK: - SubTask Type

protocol SubTaskType: Codable, CaseIterable, Identifiable, Displayable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var progress: Double { get }
    var isCompleted: Bool { get }
    var rawValue: String { get }
    var miniTaskTypes: [MiniTaskTypeBox] { get }
    
    init?(rawValue: String)
}
@dynamicMemberLookup
enum SubTaskTypeBox: Codable {
    case kitchen(KitchenSubTaskType)
    case dining(DiningRoomSubTaskType)
//    case bathroom(BathroomSubTaskType)
    case living(LivingRoomSubTaskType)
    case bedroom(BedroomSubTaskType)
    case storage(StorageSubTaskType)
    case office(OfficeSubTaskType)
    case garage(GarageSubTaskType)
    case playroom(PlayroomSubTaskType)
    case comingSoon(ComingSoonSubTaskType)
    
    var subTaskType: any SubTaskType {
        switch self {
        case .kitchen(let kitchenSubTask): return kitchenSubTask
        case .dining(let diningSubTask): return diningSubTask
//        case .bathroom(let bathroomSubTask): return bathroomSubTask
        case .living(let livingSubTask): return livingSubTask
        case .bedroom(let bedroomSubTask): return bedroomSubTask
        case .storage(let storageSubTask): return storageSubTask
        case .office(let officeSubTask): return officeSubTask
        case .garage(let garageSubTask): return garageSubTask
        case .playroom(let playroomSubTask): return playroomSubTask
        case .comingSoon(let comingSoonSubTask): return comingSoonSubTask
        }
    }
    
    init?(_ subTaskType: any SubTaskType) {
        if let kitchenSubTask = subTaskType as? KitchenSubTaskType {
            self = .kitchen(kitchenSubTask)
        } else if let diningSubTask = subTaskType as? DiningRoomSubTaskType {
            self = .dining(diningSubTask)
//        } else if let bathroomSubTask = subTaskType as? BathroomSubTaskType {
//            self = .bathroom(bathroomSubTask)
        } else if let livingSubTask = subTaskType as? LivingRoomSubTaskType {
            self = .living(livingSubTask)
        } else if let bedroomSubTask = subTaskType as? BedroomSubTaskType {
            self = .bedroom(bedroomSubTask)
        } else if let storageSubTask = subTaskType as? StorageSubTaskType {
            self = .storage(storageSubTask)
        } else if let officeSubTask = subTaskType as? OfficeSubTaskType {
            self = .office(officeSubTask)
        } else if let garageSubTask = subTaskType as? GarageSubTaskType {
            self = .garage(garageSubTask)
        } else if let playroomSubTask = subTaskType as? PlayroomSubTaskType {
            self = .playroom(playroomSubTask)
        } else if let comingSoonSubTask = subTaskType as? ComingSoonSubTaskType {
            self = .comingSoon(comingSoonSubTask)
        } else {
            return nil
        }
    }
    var id: UUID { subTaskType.id}
    var name: String { subTaskType.name }
    var imageName: String { subTaskType.imageName }
    var instructions: String { subTaskType.instructions }
    var usageDescription: String { subTaskType.usageDescription }
    var weight: Double { subTaskType.weight }
    var progress: Double { subTaskType.progress }
    var isCompleted: Bool { subTaskType.isCompleted }

    
    subscript<T>(dynamicMember keyPath: KeyPath<any SubTaskType, T>) -> T {
        subTaskType[keyPath: keyPath]
    }
    
}

// MARK: - MiniTask Type

protocol MiniTaskType: Codable, CaseIterable, Identifiable, Displayable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var progress: Double { get }
    var isCompleted: Bool { get }
    var rawValue: String { get }
    init?(rawValue: String)
}

@dynamicMemberLookup
enum MiniTaskTypeBox: Codable {
    case kitchen(KitchenMiniTaskType)
    case livingRoom(LivingRoomMiniTaskType)
    case diningRoom(DiningRoomMiniTaskType)
    case office(OfficeMiniTaskType)
    case bedroom(BedroomMiniTaskType)
    case playroom(PlayroomMiniTaskType)
    case storage(StorageMiniTaskType)
//    case bathroom(BathroomMiniTaskType)
    case garage(GarageMiniTaskType)
    case comingSoon(ComingSoonMiniTaskType)
    
    var miniTaskType: any MiniTaskType {
        switch self {
        case .kitchen(let kitchenMiniTask): return kitchenMiniTask
        case .livingRoom(let livingRoomMiniTask): return livingRoomMiniTask
        case .diningRoom(let diningRoomMiniTask): return diningRoomMiniTask
        case .office(let officeMiniTask): return officeMiniTask
        case .bedroom(let bedroomMiniTask): return bedroomMiniTask
        case .playroom(let playroomMiniTask): return playroomMiniTask
        case .storage(let storageMiniTask): return storageMiniTask
//        case .bathroom(let bathroomMiniTask): return bathroomMiniTask
        case .garage(let garageMiniTask): return garageMiniTask
        case .comingSoon(let comingSoonMiniTask): return comingSoonMiniTask
        }
    }
    init?(_ miniTaskType: any MiniTaskType) {
        if let kitchenMiniTask = miniTaskType as? KitchenMiniTaskType {
            self = .kitchen(kitchenMiniTask)
        } else if let livingRoomMiniTask = miniTaskType as? LivingRoomMiniTaskType {
            self = .livingRoom(livingRoomMiniTask)
        } else if let diningRoomMiniTask  = miniTaskType as? DiningRoomMiniTaskType {
            self = .diningRoom(diningRoomMiniTask)
        } else if let officeMiniTask = miniTaskType as? OfficeMiniTaskType {
            self = .office(officeMiniTask)
        } else if let bedroomMiniTask = miniTaskType as? BedroomMiniTaskType {
            self = .bedroom(bedroomMiniTask)
        } else if let playroomMiniTask = miniTaskType as? PlayroomMiniTaskType {
            self = .playroom(playroomMiniTask)
        } else if let storageMiniTask = miniTaskType as? StorageMiniTaskType {
            self = .storage(storageMiniTask)
//        } else if let bathroomMiniTask = miniTaskType as? BathroomMiniTaskType {
//            self = .bathroom(bathroomMiniTask)
        } else if let garageMiniTask = miniTaskType as? GarageMiniTaskType {
            self = .garage(garageMiniTask)
        } else if let comingSoonMiniTask = miniTaskType as? ComingSoonMiniTaskType {
            self = .comingSoon(comingSoonMiniTask)
        } else {
            return nil
        }
    }
        
    
    var id: UUID { miniTaskType.id}
    var name: String { miniTaskType.name }
    var imageName: String { miniTaskType.imageName }
    var instructions: String { miniTaskType.instructions }
    var usageDescription: String { miniTaskType.usageDescription }
    var weight: Double { miniTaskType.weight }
    var progress: Double { miniTaskType.progress }
    var isCompleted: Bool { miniTaskType.isCompleted }
    
    // Dynamic member lookup to access underlying properties
    subscript<T>(dynamicMember keyPath: KeyPath<any MiniTaskType, T>) -> T {
        return miniTaskType[keyPath: keyPath]
    }
}


