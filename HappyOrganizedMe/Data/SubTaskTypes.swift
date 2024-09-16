//
//  SubTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation


enum KitchenSubTaskType: String, Codable, CaseIterable, Identifiable {
    case cookware = "Cookware"
    case bakeware = "Bakeware"
    case serveWare = "ServeWare"
    case utensils = "Utensils"
    case smallAppliances = "SmallAppliances"
    case largeAppliances = "LargeAppliances"
    case cookingZone = "CookingZone"
    case drinkZone = "DrinkZone"
    case bakingZone = "BakingZone"
    case prepZone = "PrepZone"
    case applianceZone = "ApplianceZone"
    case servingZone = "ServingZone"
    case trashZone = "TrashZone"
    case dinnerware = "Dinnerware"
    case tableware = "Tableware"
    case foodStorageContainers = "FoodStorageContainers"
    case cookbooks = "Cookbooks"
    case glassware = "Glassware"
    case tableLinens = "TableLinens"
    case kitchenAids = "KitchenAids"
    case occasionalItems = "OccasionalItems"
    case trashAndRecycling = "TrashAndRecycling"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cookware: return "Cookware"
        case .bakeware: return "Bakeware"
        case .serveWare: return "ServeWare"
        case .utensils: return "Utensils"
        case .smallAppliances: return "SmallAppliances"
        case .largeAppliances: return "LargeAppliances"
        case .cookingZone: return "CookingZone"
        case .drinkZone: return "DrinkZone"
        case .bakingZone: return "BakingZone"
        case .prepZone: return "PrepZone"
        case .applianceZone: return "ApplianceZone"
        case .servingZone: return "ServingZone"
        case .trashZone: return "TrashZone"
        case .dinnerware: return "Dinnerware"
        case .tableware: return "Tableware"
        case .foodStorageContainers: return "FoodStorageContainers"
        case .cookbooks: return "Cookbooks"
        case .glassware: return "Glassware"
        case .tableLinens: return "TableLinens"
        case .kitchenAids: return "KitchenAids"
        case .occasionalItems: return "OccasionalItems"
        case .trashAndRecycling: return "TrashAndRecycling"
        }
    }
    var usageDescription: String {
        switch self {
        case .cookware: return "Cookware"
        case .bakeware: return "Bakeware"
        case .serveWare: return "ServeWare"
        case .utensils: return "Utensils"
        case .smallAppliances: return "SmallAppliances"
        case .largeAppliances: return "LargeAppliances"
        case .cookingZone: return "CookingZone"
        case .drinkZone: return "DrinkZone"
        case .bakingZone: return "BakingZone"
        case .prepZone: return "PrepZone"
        case .applianceZone: return "ApplianceZone"
        case .servingZone: return "ServingZone"
        case .trashZone: return "TrashZone"
        case .dinnerware: return "Dinnerware"
        case .tableware: return "Tableware"
        case .foodStorageContainers: return "FoodStorageContainers"
        case .cookbooks: return "Cookbooks"
        case .glassware: return "Glassware"
        case .tableLinens: return "TableLinens"
        case .kitchenAids: return "KitchenAids"
        case .occasionalItems: return "OccasionalItems"
        case .trashAndRecycling: return "TrashAndRecycling"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}
enum LivingRoomSubTaskType: String, Codable, CaseIterable, Identifiable {
    case Tables = "Tables"
    case floatingShelves = "Floating Shelves"
    case windowBoxSeat = "Window Box Seats"
    case bookshelf = "Bookshelf"
    case cornerShelves = "Corner Shelves"
    case ottoman = "Ottoman"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .Tables: return "String"
        case .floatingShelves: return "String"
        case .windowBoxSeat: return "String"
        case .bookshelf: return "String"
        case .cornerShelves: return "String"
        case .ottoman: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .Tables: return "String"
        case .floatingShelves: return "String"
        case .windowBoxSeat: return "String"
        case .bookshelf: return "String"
        case .cornerShelves: return "String"
        case .ottoman: return "String"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
}
enum DiningRoomSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
}
enum OfficeSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Office" }
    var category: String { "Furniture" }
}
enum BedroomSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
    case .declutter: return "Declutter your dining room"
    case .organize: return "Organize your dining room"
    case .clean: return "Clean your dining room"
    case .polish: return "Polish your dining room"
    case .tableLinens: return "Table Linens"
    case .accessories: return "Accessories"
    case .repairsAndUpdates: return "Repairs and Updates"
    }
}
    var usageDescription: String {
        switch self {
    case .declutter: return "Declutter your dining room"
    case .organize: return "Organize your dining room"
    case .clean: return "Clean your dining room"
    case .polish: return "Polish your dining room"
    case .tableLinens: return "Table Linens"
    case .accessories: return "Accessories"
    case .repairsAndUpdates: return "Repairs and Updates"
    }
}
    var weight: Double { 2.0 }
    var type: String { "Bedroom" }
    var category: String { "Furniture" }
}
enum PlayroomSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
}
enum BathroomSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Bathroom" }
    var category: String { "Furniture" }
}
enum StorageSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    
    var weight: Double { 2.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
}
enum GarageSubTaskType: String, Codable, CaseIterable, Identifiable {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Garage" }
    var category: String { "Furniture" }
}
enum UnknownSubTaskType: String, Codable, CaseIterable, Identifiable {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "unknown" }
    var usageDescription: String { "unknown" }
    var weight: Double { 2.0 }
    var type: String { "unknown" }
    var category: String { "unknown" }
}

//protocol SubTaskType: Codable, CaseIterable, Identifiable {
//    var id: UUID { get }
//    var name: String { get }
//    var imageName: String { get }
//    var instructions: String { get }
//    var usageDescription: String { get }
//    var weight: Double { get }
//    var type: String { get }
//    var category: String { get }
//    var rawValue: String { get }
//    init?(rawValue: String)
//}

//extension SubTaskType {
//    static var allSubTaskTypes: [any SubTaskType] {
//        return [
//            KitchenSubTaskType.allCases.map { $0 as any SubTaskType },
//            LivingRoomSubTaskType.allCases.map { $0 as any SubTaskType },
//            DiningRoomSubTaskType.allCases.map { $0 as any SubTaskType },
//            OfficeSubTaskType.allCases.map { $0 as any SubTaskType },
//            BedroomSubTaskType.allCases.map { $0 as any SubTaskType },
//            PlayroomSubTaskType.allCases.map { $0 as any SubTaskType },
//            BathroomSubTaskType.allCases.map { $0 as any SubTaskType },
//            StorageSubTaskType.allCases.map { $0 as any SubTaskType },
//            GarageSubTaskType.allCases.map { $0 as any SubTaskType },
//            UnknownSubTaskType.allCases.map { $0 as any SubTaskType }
//        ].flatMap { $0 }
//    }
//    
//}
