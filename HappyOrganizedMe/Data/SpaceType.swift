//
//  SpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation
import SwiftUI

protocol SpaceType: Codable, CaseIterable {
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

enum KitchenSpaceType: String, SpaceType, Codable, CaseIterable {
    case cabinets = "Cabinets"
    case countertop = "Countertop"
    case cupboard = "Cupboard"
    case island = "Island"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cabinets: "String instructions"
        case .countertop: "String instructions"
        case .cupboard: "String instructions"
        case .island: "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .cabinets: "String description"
        case .countertop: "String description"
        case .cupboard: "String description"
        case .island: "String description"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum LivingRoomSpaceType: String, SpaceType, Codable, CaseIterable {
    case utilityZone = "Utility Zone"
    case diningZone = "Dining Zone"
    case techZone = "Tech Zone"
    case shelvingZone = "Shelving Zone"
    case functionalFurnitureZone = "Functional Furniture Zone"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .utilityZone: return "String instructions"
        case .diningZone: return "String instructions"
        case .techZone: return "String instructions"
        case .shelvingZone: return "String instructions"
        case .functionalFurnitureZone: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .utilityZone: return "String Description"
        case .diningZone: return "String Description"
        case .techZone: return "String Description"
        case .shelvingZone: return "String Description"
        case .functionalFurnitureZone: return "String Description"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
}


enum BathroomSpaceType: String, SpaceType, Codable, CaseIterable {
    case roomDecorZone = "Room Decor Zone"
    case vanity = "Vanity"
    case medicineCabinet =  "Medicine Cabinet"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .roomDecorZone: return "String instructions"
        case .vanity: return "String instructions"
        case .medicineCabinet: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .roomDecorZone: return "String Description"
        case .vanity: return "String Description"
        case .medicineCabinet: return "String Description"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Bathroom" }
    var category: String { "Furniture" }
}

enum OfficeSpaceType: String, SpaceType, Codable, CaseIterable {
    case workstation = "Workstation"
    case deskStorage = "Desk Storage"
    case techGadgetZone = "Tech Gadget Zone"
    case referenceZone = "Reference Zone"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .workstation: return "String instructions"
        case .deskStorage: return "String instructions"
        case .techGadgetZone: return "String instructions"
        case .referenceZone: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .workstation: return "String Description"
        case .deskStorage: return "String Description"
        case .techGadgetZone: return "String Description"
        case .referenceZone: return "String Description"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Office" }
    var category: String { "Furniture" }
}

enum StorageSpaceType: String, SpaceType, Codable, CaseIterable {
    case outdoorStorageZone = "Outdoor Storage Zone"
    case indoorStorageZone = "Indoor Storage Zone"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .outdoorStorageZone: return "String instructions"
        case .indoorStorageZone: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .outdoorStorageZone: return "String Description"
        case .indoorStorageZone: return "String Description"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
}
enum BedroomSpaceType: String, SpaceType, Codable, CaseIterable {
    case bed = "Bed"
    case dresser = "Dresser"
    case nightstand = "Nightstand"
    case storageZone = "Storage Zone"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .bed: return "String instructions"
        case .dresser: return "String instructions"
        case .nightstand: return "String instructions"
        case .storageZone: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .bed: return "String Description"
        case .dresser: return "String Description"
        case .nightstand: return "String Description"
        case .storageZone: return "String Description"
        }
    }
    
    var weight: Double { 1.0 }
    var type: String { "Bedroom" }
    var category: String { "Furniture" }
    
}
enum PlayroomSpaceType: String, SpaceType, Codable, CaseIterable {
    case underFurniture = "Under Furniture"
    case wallMounted = "Wall Mounted"
    case cornerUnits = "Corner Units"
    case behindDoor = "Behind Door"
    case windowSeat = "Window Seat"
    case underStairs = "Under Stairs"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .underFurniture: return "String instructions"
        case .wallMounted: return "String instructions"
        case .cornerUnits: return "String instructions"
        case .behindDoor: return "String instructions"
        case .windowSeat: return "String instructions"
        case .underStairs: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .underFurniture: return "String Description"
        case .wallMounted: return "String Description"
        case .cornerUnits: return "String Description"
        case .behindDoor: return "String Description"
        case .windowSeat: return "String Description"
        case .underStairs: return "String Description"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
}
enum DiningRoomSpaceType: String, SpaceType, Codable, CaseIterable {
    case buffet = "Buffet"
    case builtIn = "Built In"
    case cornerCabinet = "Corner Cabinet"
    case mountedShelves = "Mounted Shelves"
    case benchSeat = "Bench Seat"
    case storageConsole = "Storage Console"
    case chinaCabinet = "chinaCabinet"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .buffet: return "String instructions"
        case .builtIn: return "String instructions"
        case .cornerCabinet: return "String instructions"
        case .mountedShelves: return "String instructions"
        case .benchSeat: return "String instructions"
        case .storageConsole: return "String instructions"
        case .chinaCabinet: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .buffet: return "String Description"
        case .builtIn: return "String Description"
        case .cornerCabinet: return "String Description"
        case .mountedShelves: return "String Description"
        case .benchSeat: return "String Description"
        case .storageConsole: return "String Description"
        case .chinaCabinet: return "String Description"
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
}
enum GarageSpaceType: String, SpaceType, Codable, CaseIterable {
    case ceilingStorage = "Ceiling Storage"
    case garageShelves = "Garage Shelves"
    case garageCabinet = "Garage Cabinet"
    case garageWindowSeat = "Garage Window Seat"
    case garagePegboard = "Garage Pegboard"
    case workbench = "Workbench"
    case racks = "Racks"
    case toolChests = "Tool Chests"
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .ceilingStorage: return "String instructions"
        case .garageShelves: return "String instructions"
        case .garageCabinet: return "String instructions"
        case .garageWindowSeat: return "String instructions"
        case .garagePegboard: return "String instructions"
        case .workbench: return "String instructions"
        case .racks: return "String instructions"
        case .toolChests: return "String instructions"
        }
    }
    var usageDescription: String {
        switch self {
        case .ceilingStorage: return "String Description"
        case .garageShelves: return "String Description"
        case .garageCabinet: return "String Description"
        case .garageWindowSeat: return "String Description"
        case .garagePegboard: return "String Description"
        case .workbench: return "String Description"
        case .racks: return "String Description"
        case .toolChests: return "String Description"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Garage" }
    var category: String { "Furniture" }
}
enum UnknownSpaceType: String, SpaceType, Codable, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "String" }
    var usageDescription: String { "String" }
    var weight: Double { 0.0 }
    var type: String { "Unknown" }
    var category: String { "Unknown" }
}
// Add other SpaceType enums here

