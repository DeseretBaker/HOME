//
//  RoomType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol RoomType: Codable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    init?(rawValue: String) // make the initializer failable
}

enum KitchenRoomType: String, RoomType {
    case islandKitchen
    case uShapedKitchen
    case lShapedKitchen
    case galleyKitchen
    case singleWallKitchen
    case openPlanKitchen
    case kitchenetteCompactKitchen
    case outdoorKitchen
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .islandKitchen, .uShapedKitchen: return 5.0
        case .lShapedKitchen, .galleyKitchen: return 4.0
        case .singleWallKitchen: return 3.0
        case .openPlanKitchen, .kitchenetteCompactKitchen: return 2.0
        case .outdoorKitchen: return 1.0
        }
    }
}
enum LivingRoomType: String, RoomType {
    case lShapedLivingRoom
    case uShapedLivingRoom
    case openPlanLivingRoom
    case familyRoom
    case lounge
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .lShapedLivingRoom: return 3.0
        case .uShapedLivingRoom: return 3.0
        case .openPlanLivingRoom: return 3.0
        case .familyRoom: return 3.0
        case .lounge: return 3.0
        }
    }
}
enum BedroomRoomType: String, RoomType {
    case masterBedroom
    case childrensBedroom
    case youngAdultBedroom
    case guestBedroom
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .masterBedroom: return 1.0
        case .childrensBedroom: return 1.0
        case .youngAdultBedroom: return 1.0
        case .guestBedroom: return 1.0
        }
    }
}
enum BathroomRoomType: String, RoomType {
    case halfBath
    case jackJill
    case quarterBath
    case fullBath
    case guestBath
    case masterBath
    case powderRoom
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .halfBath: return 2.0
        case.jackJill: return 2.0
        case .quarterBath: return 2.0
        case.fullBath: return 2.0
        case .guestBath: return 2.0
        case.masterBath: return 2.0
        case .powderRoom: return 2.0
        }
    }
}
enum DiningRoomType: String, RoomType {
    case diningRoom
    case breakfastNook
    case formalDining
    case openDining
    case casualDining
    case diningRoomWithBar
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .diningRoom: return 1.0
        case .breakfastNook: return 1.0
        case .formalDining: return 1.0
        case .openDining: return 1.0
        case .casualDining: return 1.0
        case .diningRoomWithBar: return 1.0
        }
    }
}
enum GarageRoomType: String, RoomType {
    case oneCarGarage
    case twoCarGarage
    case threeCarGarage
    case fourCarGarage
    case fiveCarGarage
    case sixCarGarage
    case carport
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .carport: return 5.0
        case .oneCarGarage: return 5.0
        case .twoCarGarage: return 5.0
        case .threeCarGarage: return 5.0
        case .fourCarGarage: return 5.0
        case .fiveCarGarage: return 5.0
        case .sixCarGarage: return 5.0
        }
    }
}
    enum OfficeType: String, RoomType {
        case creativeOffice
        case homeOffice
        case openPlanOffice
        case sharedSpaceOffice
        case studentOffice
        
        var name: String { rawValue }
        var imageName: String { rawValue }
        var weight: Double {
            switch self {
            case .creativeOffice: return 2.0
            case .homeOffice: return 2.0
            case .openPlanOffice: return 2.0
            case .sharedSpaceOffice: return 2.0
            case .studentOffice: return 2.0
            }
        }
    }
    enum PlayroomRoomType: String, RoomType {
        case creativePlayroom
        case fantasyPlayroom
        case gameRoom
        case movieRoom
        case storytellerRoom
        case adventureRoom
        case outdoorPlayRoom
        
        var name: String { rawValue }
        var imageName: String { rawValue }
        var weight: Double {
            switch self {
            case .creativePlayroom: return 4.0
            case .fantasyPlayroom: return 4.0
            case .gameRoom: return 4.0
            case .movieRoom: return 4.0
            case .storytellerRoom: return 4.0
            case .adventureRoom: return 4.0
            case .outdoorPlayRoom: return 4.0
            }
        }
    }
    enum StorageRoomType: String, RoomType {
        case pantry
        case closet
        case basement
        case attic
        case storage
        
        var name: String { rawValue }
        var imageName: String { rawValue }
        var weight: Double {
            switch self {
            case .basement: return 5.0
            case .attic: return 5.0
            case .pantry: return 3.0
            case .closet: return 3.0
            case .storage: return 3.0
            }
        }
    }
enum UnknownRoomType: String, RoomType {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
}


// Add other RoomType enums here (e.g., BedroomType, BathroomType, etc.)
