//
//  Protocols.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/18/24.
//

import Foundation

// Protocols.swift

import Foundation

// Define your protocols here

// MARK: - Room Type

protocol RoomType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
//    TODO: var spaceTypes: [any SpaceType] { get }
    init?(rawValue: String)
    
}

@dynamicMemberLookup
enum RoomTypeBox: Codable {
    case kitchen(KitchenRoomType)
    case dining(DiningRoomType)
    case bathroom(BathroomRoomType)
    case living(LivingRoomType)
    case bedroom(BedroomRoomType)
    case storage(StorageRoomType)
    case office(OfficeRoomType)
    case garage(GarageRoomType)
    case playroom(PlayroomRoomType)
    
    var roomType: any RoomType {
        switch self {
        case .kitchen(let kitchen): return kitchen
        case .dining(let dining): return dining
        case .bathroom(let bathroom): return bathroom
        case .living(let living): return living
        case .bedroom(let bedroom): return bedroom
        case .storage(let storage): return storage
        case .office(let office): return office
        case .garage(let garage): return garage
        case .playroom(let playroom): return playroom
        }
    }
    
    init(_ roomType: any RoomType) {
        if let kitchen = roomType as? KitchenRoomType {
            self = .kitchen(kitchen)
        } else if let dining = roomType as? DiningRoomType {
            self = .dining(dining)
        } else if let bathroom = roomType as? BathroomRoomType {
            self = .bathroom(bathroom)
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
        } else {
            fatalError("Unknown type implementing RoomType. FIX ME!!!")
        }
    }
    
    subscript<T>(dynamicMember keyPath: KeyPath<any RoomType, T>) -> T {
        roomType[keyPath: keyPath]
    }
    
}


// MARK: Space Type

protocol SpaceType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    // TODO: var subTaskTypes
    init?(rawValue: String)
}

// MARK: - SubTask Type

protocol SubTaskType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    // TODO: var miniTaskTypes
    init?(rawValue: String)
}

// MARK: - MiniTask Type

protocol MiniTaskType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
}

@dynamicMemberLookup
enum MiniTaskTypeBox: Codable {
    case kitchen(KitchenMiniTaskType)
    case living(LivingRoomMiniTaskType)
    case dining(DiningRoomMiniTaskType)
    case office(OfficeMiniTaskType)
    case bedroom(BedroomMiniTaskType)
    case playroom(PlayroomMiniTaskType)
    case storage(StorageMiniTaskType)
    case bathroom(BathroomMiniTaskType)
    case garage(GarageMiniTaskType)
    case unknown(UnknownMiniTaskType)
    
    var miniTaskType: any MiniTaskType {
        switch self {
        case .kitchen(let kitchenMiniTask): return kitchenMiniTask
        case .living(let livingRoomMiniTask): return livingRoomMiniTask
        case .dining(let diningRoomMiniTask): return diningRoomMiniTask
        case .office(let officeMiniTask): return officeMiniTask
        case .bedroom(let bedroomMiniTask): return bedroomMiniTask
        case .playroom(let playroomMiniTask): return playroomMiniTask
        case .storage(let storageMiniTask): return storageMiniTask
        case .bathroom(let bathroomMiniTask): return bathroomMiniTask
        case .garage(let garageMiniTask): return garageMiniTask
        case .unknown(let unknownMiniTask): return unknownMiniTask
        }
    }
    
    subscript<T>(dynamicMember keyPath: KeyPath<any MiniTaskType, T>) -> T {
        miniTaskType[keyPath: keyPath]
    }
}

//protocol DataLoader {
//    func loadData()
//}
//
//protocol TrackableProgress {
//    var progress: Double { get }
//    func updateProgress()
//}
//
//protocol IdentifiableEntity {
//    var id: UUID { get }
//}
//
//protocol Displayable {
//    var displayName: String { get }
//    var imageName: String { get }
//}
