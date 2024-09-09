//
//  SpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol SpaceType: Codable, CaseIterable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    init?(rawValue: String)
}

enum KitchenSpaceType: String, SpaceType, CaseIterable {
    case cabinets
    case countertop
    case cupboard
    case island
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 2.0 }
//        switch self {
//        case .cabinets: return ""
//        case .countertop: return ""
//        case .cupboard: return ""
//        case .island: return ""
//        }
//    }
}
    enum LivingRoomSpaceType: String, SpaceType, CaseIterable {
        case Tables
        case floatingShelves
        case windowBoxSeat
        case bookshelf
        case cornerShelves
        case ottoman
        
        var name: String { rawValue }
        var imageName: String { rawValue }
        var weight: Double { 2.0 }

        var description: String {
            switch self {
            case .Tables: return "Tables!"
            case .floatingShelves: return "Floating Shelves!"
            case .windowBoxSeat: return "Window Box Seats!"
            case .bookshelf: return "Bookshelves!"
            case .cornerShelves: return "Corner Shelves!"
            case .ottoman: return "Ottomans!"
            }
        }
    }
       
enum BathroomSpaceType: String, SpaceType, CaseIterable {
    case roomDecorZone
    case vanity
    case medicineCabinet
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 1.0 }
//        switch self {
//        case .roomDecorZone: return ""
//        case .vanity: return ""
//        case .medicineCabinet: return ""
        }
    

enum OfficeSpaceType: String, SpaceType, CaseIterable {
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
enum StorageSpaceType: String, SpaceType, CaseIterable {
    case outdoorStorageZone
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .outdoorStorageZone: return 0.1
        }
    }
}
enum BedroomSpaceType: String, SpaceType, CaseIterable {
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
enum PlayroomSpaceType: String, SpaceType, CaseIterable {
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
enum DiningRoomSpaceType: String, SpaceType, CaseIterable {
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
    enum GarageSpaceType: String, SpaceType, CaseIterable {
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
enum UnknownSpaceType: String, SpaceType, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
}
   // Add other SpaceType enums here

