//
//  SpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol SpaceType: Codable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    init?(rawValue: String)
}

enum KitchenSpaceType: String, SpaceType {
    case cabinets
    case countertop
    case cupboard
    case island
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .cabinets: return 5.0
        case .countertop: return 4.0
        case .cupboard: return 3.0
        case .island: return 2.0
        }
    }
}
enum LivingRoomSpaceType: String, SpaceType {
    case utilityZone
    case diningZone
    case techZone
    case shelvingZone
    case functionalFurnitureZone
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .utilityZone: return 5
        case .diningZone: return 3
        case .techZone: return 3
        case .shelvingZone: return 3
        case .functionalFurnitureZone: return 3
        }
    }
}
enum BathroomSpaceType: String, SpaceType {
    case roomDecorZone
    case vanity
    case medicineCabinet
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .roomDecorZone: return 0.1
        case .vanity: return 0.1
        case .medicineCabinet: return 0.1
        }
    }
}
enum OfficeSpaceType: String, SpaceType {
    case workstation
    case deskStorage
    case techGadgetZone
    case referenceZone
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .workstation: return 5.0
        case .deskStorage: return 5.0
        case .techGadgetZone: return 3.0
        case .referenceZone: return 2.0
        }
    }
}
enum StorageSpaceType: String, SpaceType {
    case outdoorStorageZone
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .outdoorStorageZone: return 0.1
        }
    }
}
enum BedroomSpaceType: String, SpaceType {
    case bed
    case dresser
    case nightstand
    case storageZone
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .bed: return 1.0
        case .dresser: return 1.0
        case .nightstand: return 1.0
        case .storageZone: return 1.0
        }
    }
}
enum PlayroomSpaceType: String, SpaceType {
    case underFurniture
    case wallMounted
    case cornerUnits
    case behindDoor
    case windowSeat
    case underStairs
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .underFurniture: return 0.1
        case .wallMounted: return 0.1
        case .cornerUnits: return 0.1
        case .behindDoor: return 0.1
        case .windowSeat: return 0.1
        case .underStairs: return 0.1
        }
    }
}
enum DiningRoomSpaceType: String, SpaceType {
    case buffet
    case builtIn
    case cornerCabinet
    case mountedShelves
    case benchSeat
    case storageConsole
    case chinaCabinet
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .buffet: return 3
        case .builtIn: return 3
        case .cornerCabinet: return 3
        case .mountedShelves: return 3
        case .benchSeat: return 3
        case .storageConsole: return 3
        case .chinaCabinet: return 3
        }
    }
}
    enum GarageSpaceType: String, SpaceType {
        case ceilingStorage
        case garageShelves
        case garageCabinet
        case garageWindowSeat
        case garagePegboard
        case workbench
        case racks
        case toolChests
        
        var name: String { rawValue }
        var imageName: String { rawValue }
        var weight: Double {
            switch self {
            case .ceilingStorage: return 3
            case .garageShelves: return 3
            case .garageCabinet: return 3
            case .garageWindowSeat: return 3
            case .garagePegboard: return 3
            case .workbench: return 3
            case .racks: return 3
            case .toolChests: return 3
            }
        }
    }
enum UnknownSpaceType: String, SpaceType {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
}
   // Add other SpaceType enums here

