//
//  RoomType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol RoomType: Codable, CaseIterable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    init?(rawValue: String) // make the initializer failable
}

enum KitchenRoomType: String, RoomType {
    case kitchenCabinets
    case kitchenIsland
    case kitchenCupboards
    case kitchenShelves
    case kitchenCountertops
    case kitchenDrawers
    
    var name: String {
        switch self {
        case .kitchenCabinets: return "Cabinets"
        case .kitchenIsland: return "Island"
        case .kitchenCupboards: return "Cupboards"
        case .kitchenShelves: return "Shelves"
        case .kitchenCountertops: return "Countertops"
        case .kitchenDrawers: return "Drawers"
        }
    }
    var imageName: String { rawValue }
    var weight: Double { 3.0 }
       
    // Provide all cases statically
    static var allRoomTypes: [any RoomType] {
        return KitchenRoomType.allCases.map { $0 }
    }
}
enum LivingRoomType: String, RoomType {

    case livingRoomSeating
    case livingRoomTables
    case livingRoomShelves
    
    var name: String {
        switch self {
        case .livingRoomSeating: return "Seating"
        case .livingRoomTables: return "Tables"
        case .livingRoomShelves: return "Shelves"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 1.0 }
    
    static var allRoomTypes: [any RoomType] {
        return LivingRoomType.allCases.map { $0 }
    }
}
enum BedroomRoomType: String, RoomType {
    case bedroomSeating
    case bedroomTables
    case bedroomShelves
    case bedroomDresser
    case bedroomDesk

    var name: String {
        switch self {
        case .bedroomSeating: return "Seating"
        case .bedroomTables: return "Tables"
        case .bedroomShelves: return "Shelves"
        case .bedroomDresser: return "Dresser"
        case .bedroomDesk: return "Desk"
        }
    }
    var imageName: String { rawValue }
        
        var weight: Double { 1.0 }
        
    static var allRoomTypes: [any RoomType] {
        return BedroomRoomType.allCases.map { $0 }
    }
}
enum BathroomRoomType: String, RoomType {
    case bathroomshelves
    case bathroomCabinets
    case bathroomTubShower
 
    var name: String {
        switch self {
        case .bathroomshelves: return "Shelves"
        case .bathroomCabinets: return "Cabinets"
        case .bathroomTubShower: return "Tub/Shower"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 2.0 }
        
    static var allRoomTypes: [any RoomType] {
        return BathroomRoomType.allCases.map { $0 }
    }
}
enum DiningRoomType: String, RoomType {
    case diningRoomBuffet
    case diningRoomChinaCabinet
    case diningRoomShelves
    case diningRoomBench
   
    var name: String {
        switch self {
        case .diningRoomBuffet: return "Buffet"
        case .diningRoomChinaCabinet: return "China cabinet"
        case .diningRoomShelves: return "Shelves"
        case .diningRoomBench: return "Bench"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 1.0 }
        
    static var allRoomTypes: [any RoomType] {
        return DiningRoomType.allCases.map { $0 }
    }
}
enum GarageRoomType: String, RoomType {
    case garageWorkbench
    case garageShelving
    case garageSports
    case garageCamping
    case garageOverheadStorage
    case garageSeasonal
    
    var name: String {
        switch self {
        case .garageWorkbench: return "Workbench"
        case .garageShelving: return "Shelving"
        case .garageSports: return "Sports"
        case .garageCamping: return "Camping"
        case .garageOverheadStorage: return "Overhead Storage"
        case .garageSeasonal: return "Seasonal"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 2.0 }
        
    static var allRoomTypes: [any RoomType] {
        return GarageRoomType.allCases.map { $0 }
    }
}
enum OfficeType: String, RoomType {
    case officeShelving
    case officeDesk
    case officeCabinets
    case officeDrawers
 
    var name: String {
        switch self {
        case .officeShelving: return "Shelving"
        case .officeDesk: return "Desk"
        case .officeCabinets: return "Cabinets"
        case .officeDrawers: return "Drawers"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 1.0 }
        
    static var allRoomTypes: [any RoomType] {
        return OfficeType.allCases.map { $0 }
    }
}
enum PlayroomRoomType: String, RoomType {
    case playroomShelving
    case playroomDesk
    case playroomCabinets
    case playroomDrawers
    case playroomTables
    
    var name: String {
        switch self {
        case .playroomShelving: return "Shelving"
        case .playroomDesk: return "Desk"
        case .playroomCabinets: return "Cabinets"
        case .playroomDrawers: return "Drawers"
        case .playroomTables: return "Tables"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 2.0 }
        
    static var allRoomTypes: [any RoomType] {
        return PlayroomRoomType.allCases.map { $0 }
    }
}
enum StorageRoomType: String, RoomType {
    case storagePantry
    case storageCloset
    case storageUnderStairs
    case storageBasement
    case storageAttic
    
    var name: String {
        switch self {
        case .storagePantry: return "Pantry"
        case .storageCloset: return "Closet"
        case .storageUnderStairs: return "Understairs"
        case .storageBasement: return "Basement"
        case .storageAttic: return "Attic"
        }
    }
    var imageName: String { rawValue }
    
    var weight: Double { 2.0 }
        
    static var allRoomTypes: [any RoomType] {
        return StorageRoomType.allCases.map { $0 }
    }
}
enum UnknownRoomType: String, RoomType {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
    
    static var allRoomTypes: [any RoomType] {
        return UnknownRoomType.allCases.map { $0 }
    }
}

// Access all roomTypes
let allRoomTypes: [any RoomType] =
KitchenRoomType.allRoomTypes +
LivingRoomType.allRoomTypes +
GarageRoomType.allRoomTypes +
BathroomRoomType.allRoomTypes +
StorageRoomType.allRoomTypes +
OfficeType.allRoomTypes +
PlayroomRoomType.allRoomTypes +
BedroomRoomType.allRoomTypes +
DiningRoomType.allRoomTypes +
UnknownRoomType.allRoomTypes






