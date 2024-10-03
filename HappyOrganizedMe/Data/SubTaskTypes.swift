//
//  SubTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

enum KitchenSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    

    case prepCounters = "PrepCounters"
    case appliances = "Appliances"
    case theWholeRange = "theWholeRange"
    case allThingsCooking = "Cooking Zone"
    case allThingsCleaning = "Cleaning Supplies"
    case allThingsWaste = "Waste Zone"
    case foodStoragePantry = "Pantry Zone"
    case servingZoneEverydayDishes = "Everyday Dishes"
    case serveWareHolidays = "Holidays"
    case bakingZoneBakingSupplies = "Baking Supplies"
    case drinkZone = "Drink Zone"
    
    
    // conforming to Identifiable
    var id: UUID { UUID() }
    
    // conforming to Displayable
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .prepCounters: return "PrepCounters"
        case .appliances: return "Appliances"
        case .theWholeRange: return "theWholeRange"
        case .allThingsCooking: return "Cooking Zone"
        case .allThingsCleaning: return "CleaningSupplies"
        case .allThingsWaste: return "GeneralWaste"
        case .foodStoragePantry: return "Pantry"
        case .servingZoneEverydayDishes: return "Everyday Dishes"
        case .serveWareHolidays: return "Holidays"
        case .bakingZoneBakingSupplies: return "Baking Supplies"
        case .drinkZone: return "Drink Zone"
        }
    }
    var usageDescription: String {
        switch self {
        case .prepCounters: return "PrepCounters"
        case .appliances: return "Appliances"
        case .theWholeRange: return "theWholeRange"
        case .allThingsCooking: return "Cooking Zone"
        case .allThingsCleaning: return "KitchenCleaningZone"
        case .allThingsWaste: return "GeneralWaste"
        case .foodStoragePantry: return "Pantry"
        case .servingZoneEverydayDishes: return "Everyday Dishes"
        case .serveWareHolidays: return "Holidays"
        case .bakingZoneBakingSupplies: return "Baking Supplies"
        case .drinkZone: return "Drink Zone"
        }
    }
    var weight: Double { 2.0 }
    // computed property for progress
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    // computed property for isCompleted
    var isCompleted: Bool {
        switch self {
        case .prepCounters: return true
        case .appliances: return true
        case .theWholeRange: return true
        case .allThingsCooking: return true
        case .allThingsCleaning: return true
        case .allThingsWaste: return true
        case .foodStoragePantry: return true
        case .servingZoneEverydayDishes: return true
        case .serveWareHolidays: return true
        case .bakingZoneBakingSupplies: return true
        case .drinkZone: return true
        }
    }
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    
    var miniTaskTypes: [MiniTaskTypeBox] {
        switch self {
        case .prepCounters:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .appliances:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .theWholeRange:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .allThingsCooking:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]

        case .allThingsCleaning:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .allThingsWaste:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .foodStoragePantry:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .servingZoneEverydayDishes:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .serveWareHolidays:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .bakingZoneBakingSupplies:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .drinkZone:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        }
    }
    static var SubTaskType: [any SubTaskType] {
        return KitchenSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
    enum LivingRoomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case tables = "Tables"
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
            case .tables: return "String"
            case .floatingShelves: return "String"
            case .windowBoxSeat: return "String"
            case .bookshelf: return "String"
            case .cornerShelves: return "String"
            case .ottoman: return "String"
            }
        }
        var usageDescription: String {
            switch self {
            case .tables: return "String"
            case .floatingShelves: return "String"
            case .windowBoxSeat: return "String"
            case .bookshelf: return "String"
            case .cornerShelves: return "String"
            case .ottoman: return "String"
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .tables, .floatingShelves, .windowBoxSeat, .bookshelf, .cornerShelves, .ottoman: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .tables, .floatingShelves, .windowBoxSeat, .bookshelf, .cornerShelves, .ottoman:
                return [
                    MiniTaskTypeBox(LivingRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return LivingRoomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum DiningRoomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        
        case drinkCart = "Drink Station"
        case multiUseZone = "MultiUse Zone"
        case diningRoomLighting = "diningRoomLighting"
        case diningRoomDecor = "diningRoomDecor"
        case diningRoomStorage = "diningRoomStorage"
        case buffetSideboard = "buffetSideboard"
        case diningRoomTable = "diningTable"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .drinkCart: return "Drink Station"
            case .multiUseZone: return "Organize your dining room"
            case .diningRoomLighting: return "diningRoomLighting"
            case .diningRoomDecor: return "diningRoomDecor"
            case .diningRoomStorage: return "Table Linens"
            case .buffetSideboard: return "buffetSideboard"
            case .diningRoomTable: return "Dining Room Table"
            }
        }
        var usageDescription: String {
            switch self {
            case .drinkCart: return "Drink Station"
            case .multiUseZone: return "MultiUse Zone"
            case .diningRoomLighting: return "diningRoomLighting"
            case .diningRoomDecor: return "diningRoomDecor"
            case .diningRoomStorage: return "Table Linens"
            case .buffetSideboard: return "buffetSideboard"
            case .diningRoomTable: return "Dining Room Table"
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .drinkCart, .multiUseZone, .diningRoomLighting, .diningRoomDecor, .diningRoomStorage, .buffetSideboard, .diningRoomTable: return true
                
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .drinkCart, .multiUseZone, .diningRoomLighting, .diningRoomDecor, .diningRoomStorage, .buffetSideboard, .diningRoomTable:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return DiningRoomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum OfficeSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case setupDesk = "Desk Setup"
        case officeBooks = "Office Books"
        case officeTechnology = "Office Technology"
        case storageInOffice = "Storage in Office"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .setupDesk: return "Desk Setup"
            case .officeBooks: return "Office Books"
            case .officeTechnology: return "Office Technology"
            case .storageInOffice: return "Storage in Office"
            }
        }
        var usageDescription: String {
            switch self {
            case .setupDesk: return "Desk Setup"
            case .officeBooks: return "Office Books"
            case .officeTechnology: return "Office Technology"
            case .storageInOffice: return "Storage in Office"
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .setupDesk: return true
            case .officeBooks: return true
            case .officeTechnology: return true
            case .storageInOffice: return true
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .setupDesk:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            case .officeBooks:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            case .officeTechnology:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            case .storageInOffice:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return OfficeSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum BedroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
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
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates: return true
                
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates:
                return [
                    MiniTaskTypeBox(BedroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return BedroomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum PlayroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
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
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates:
                return [
                    MiniTaskTypeBox(PlayroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.group)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return PlayroomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum BathroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
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
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool{
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates: return true
                
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return BathroomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum StorageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
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
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates: return true
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates:
                return [
                    MiniTaskTypeBox(StorageMiniTaskType.remove)!,
                    MiniTaskTypeBox(StorageMiniTaskType.clean)!,
                    MiniTaskTypeBox(StorageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(StorageMiniTaskType.group)!,
                    MiniTaskTypeBox(StorageMiniTaskType.sort)!,
                    MiniTaskTypeBox(StorageMiniTaskType.contain)!,
                    MiniTaskTypeBox(StorageMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return StorageSubTaskType.allCases.map { $0 as any SubTaskType }
        }
        
    }
    enum GarageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
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
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return GarageSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum UnknownSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case unknown
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        var instructions: String { "unknown" }
        var usageDescription: String { "unknown" }
        var weight: Double { 2.0 }
        var progress: Double { 0.0 }
        var isCompleted: Bool { false }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .unknown:  return []
            }
        }
        var SubTaskType: [any SubTaskType] {
            return UnknownSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    
