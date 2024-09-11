//
//  SubTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol SubTaskType: Codable, CaseIterable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    var instructions: String? { get }
    var usageDescription: String? { get }
    init?(rawValue: String)
}
enum KitchenSubTaskType: String, SubTaskType, CaseIterable {
    case cookware
    case bakeware
    case serveWare
    case utensils
    case smallAppliances
    case cookingZone
    case drinkZone
    case bakingZone
    case prepZone
    case applianceZone
    case servingZone
    case dinnerware
    case tableware
    case foodStorageContainers
    case cookbooks
    case glassware
    case tableLinens
    case kitchenAids
    case occasionalItems
    case trashAndRecycling
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .cookware: return 1.0
        case .bakeware: return 1.0
        case .serveWare: return 2.0
        case .utensils: return 2.0
        case .smallAppliances: return 1.0
        case .cookingZone: return 1.0
        case .drinkZone: return 1.0
        case .bakingZone: return 1.0
        case .prepZone: return 1.0
        case .applianceZone: return 1.0
        case .servingZone: return 1.0
        case .dinnerware: return 1.0
        case .tableware: return 1.0
        case .foodStorageContainers: return  1.0
        case .cookbooks: return  1.0
        case .glassware: return  1.0
        case .tableLinens: return 1.0
        case .kitchenAids: return 1.0
        case .occasionalItems: return 1.0
        case .trashAndRecycling: return 1.0
        }
    }
}
enum LivingRoomSubTaskType: String, SubTaskType, CaseIterable {
    case Tables
    case floatingShelves
    case windowBoxSeat
    case bookshelf
    case cornerShelves
    case ottoman
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .Tables: return 2.0
        case .floatingShelves: return 2.0
        case .windowBoxSeat: return 2.0
        case .bookshelf: return 2.0
        case .cornerShelves: return 2.0
        case .ottoman: return 2.0
        }
    }
}
enum DiningRoomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum OfficeSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum BedroomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum PlayroomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum BathroomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum StorageSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum GarageSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
}
enum UnknownSubTaskType: String, SubTaskType, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 0.0 }
}
