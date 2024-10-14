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
    case allThingsCooking = "Cooking pans"
    case allThingsCleaning = "Kitchen Cleaning Supplies"
    case allThingsWaste = "All Things Waste"
    case foodStoragePantry = "Perishable zone"
    case servingZoneEverydayDishes = "Day Dishes"
    case serveWareHolidays = "Holidays Dishes"
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
        case .foodStoragePantry: return "Fridge Zone"
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
        case pillowsBlankets = "Pillows & Blankets"
        case mainSeatingSubTask = "Main Seating"
        case gamingDecorSubTasks = "Gaming Decor"
        case readingDecorSubTasks = "Reading Decor"
        case surroundSound = "Surround Sound"
        case tvMediaSubTask = "TV & Media"
        case comfyChairSeating = "Comfy Chair"
        case binsBaskets = "Bins & Baskets"
        case cabinetShelvesSubTask = "Cabinet Shelves"
        case accentLightingSubTask = "Accent Lighting"
        case greeneryPlants = "Greenery & Plants"
        case wallArtSubTasks = "Wall Art"
        case playMatSubTask = "Play Mat"
        case artsCraftSubTask = "Arts & Crafts"
        case tvMediaDecor = "TV Media Decor"
        case drawerSubTasks = "Drawer"
        case gameAreaSubTasks = "Game Area"
        case livingRoomToyStorage = "Living Room Toys"
        case seatingSubTasks = "Seating"
        case coffeeTableSubTasks = "Coffee Table"
        case decorAccentSubTask = "Decor Accent"
        case lightingSubTasks = "Lighting"
        case taskLightingSubTask = "Task Lighting 1"
        case lightingControlsSubTask = "Lighting Controls"
        case deskSubTask = "Desk"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .deskSubTask: return "String"
            case .lightingControlsSubTask: return "String"
            case .taskLightingSubTask: return "String"
            case .lightingSubTasks: return "String"
            case .decorAccentSubTask: return "String"
            case .coffeeTableSubTasks: return "String"
            case .seatingSubTasks: return "String"
            case .livingRoomToyStorage: return "String"
            case .gameAreaSubTasks: return "String"
            case .drawerSubTasks: return "String"
            case .tvMediaDecor: return "String"
            case .artsCraftSubTask: return "String"
            case .playMatSubTask: return "String"
            case .wallArtSubTasks: return "String"
            case .greeneryPlants: return "String"
            case .accentLightingSubTask: return "String"
            case .cabinetShelvesSubTask: return "String"
            case .binsBaskets: return "String"
            case .comfyChairSeating: return "String"
            case .tvMediaSubTask: return "String"
            case .surroundSound: return "String"
            case .gamingDecorSubTasks: return "String"
            case .readingDecorSubTasks: return "String"
            case .mainSeatingSubTask: return "String"
            case .pillowsBlankets: return "String"
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
            case .deskSubTask: return "String"
            case .lightingControlsSubTask: return "String"
            case .taskLightingSubTask: return "String"
            case .lightingSubTasks: return "String"
            case .decorAccentSubTask: return "String"
            case .coffeeTableSubTasks: return "String"
            case .seatingSubTasks: return "String"
            case .livingRoomToyStorage: return "String"
            case .gameAreaSubTasks: return "String"
            case .drawerSubTasks: return "String"
            case .tvMediaDecor: return "String"
            case .artsCraftSubTask: return "String"
            case .playMatSubTask: return "String"
            case .wallArtSubTasks: return "String"
            case .greeneryPlants: return "String"
            case .accentLightingSubTask: return "String"
            case .cabinetShelvesSubTask: return "String"
            case .binsBaskets: return "String"
            case .comfyChairSeating: return "String"
            case .tvMediaSubTask: return "String"
            case .surroundSound: return "String"
            case .gamingDecorSubTasks: return "String"
            case .readingDecorSubTasks: return "String"
            case .mainSeatingSubTask: return "String"
            case .pillowsBlankets: return "String"
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
            case .tables, .floatingShelves, .windowBoxSeat, .bookshelf, .ottoman, .cornerShelves, .pillowsBlankets, .mainSeatingSubTask, .gamingDecorSubTasks, .readingDecorSubTasks, .surroundSound, .tvMediaSubTask, .comfyChairSeating, .binsBaskets, .cabinetShelvesSubTask, .accentLightingSubTask, .greeneryPlants, .wallArtSubTasks, .playMatSubTask, .artsCraftSubTask, .tvMediaDecor, .drawerSubTasks, .gameAreaSubTasks, .livingRoomToyStorage, .seatingSubTasks, .coffeeTableSubTasks, .decorAccentSubTask, .lightingSubTasks, .taskLightingSubTask, .lightingControlsSubTask, .deskSubTask: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .tables, .floatingShelves, .windowBoxSeat, .bookshelf, .cornerShelves, .ottoman, .pillowsBlankets, .mainSeatingSubTask, .gamingDecorSubTasks, .readingDecorSubTasks, .surroundSound, .tvMediaSubTask, .comfyChairSeating, .binsBaskets, .cabinetShelvesSubTask, .accentLightingSubTask, .greeneryPlants, .wallArtSubTasks, .playMatSubTask, .artsCraftSubTask, .tvMediaDecor, .drawerSubTasks, .gameAreaSubTasks, .livingRoomToyStorage, .seatingSubTasks, .coffeeTableSubTasks, .decorAccentSubTask, .lightingSubTasks, .taskLightingSubTask, .lightingControlsSubTask, .deskSubTask:
                 return [
                    MiniTaskTypeBox(LivingRoomMiniTaskType.remove)!,
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
        
        case drinkCart1 = "Drink Station"
        case multiUseZone1 = "Multi Purpose"
        case diningRoomLighting = "Dining Room Lighting"
        case diningRoomDecor = "Dining Room Decor"
        case diningRoomStorage = "Table Linens"
        case buffetSideboard = "Mod Buffet Side board"
        case diningRoomTable = "Dining Table"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .drinkCart1: return "Drink Station"
            case .multiUseZone1: return "Organize your dining room"
            case .diningRoomLighting: return "diningRoomLighting"
            case .diningRoomDecor: return "diningRoomDecor"
            case .diningRoomStorage: return "Table Linens"
            case .buffetSideboard: return "buffetSideboard"
            case .diningRoomTable: return "Mod Dining Table"
            }
        }
        var usageDescription: String {
            switch self {
            case .drinkCart1: return "Drink Station"
            case .multiUseZone1: return "MultiUse Zone"
            case .diningRoomLighting: return "diningRoomLighting"
            case .diningRoomDecor: return "diningRoomDecor"
            case .diningRoomStorage: return "Table Linens"
            case .buffetSideboard: return "buffetSideboard"
            case .diningRoomTable: return "Mod Dining Table"
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .drinkCart1, .multiUseZone1, .diningRoomLighting, .diningRoomDecor, .diningRoomStorage, .buffetSideboard, .diningRoomTable: return true
                
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .drinkCart1, .multiUseZone1, .diningRoomLighting, .diningRoomDecor, .diningRoomStorage, .buffetSideboard, .diningRoomTable:
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
        case chillOutZone = "Chill out Zone"
        case theMailAndStuff = "The Mail and Stuff"
        case inspirationSpace = "Inspiration Space"
        case meetingZone = "Meeting Zone"
        case lightRight = "Light Right"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .chillOutZone: return "Chill Zone"
            case .inspirationSpace: return "Inspiration Space"
            case .meetingZone: return "Meeting Zone"
            case .lightRight: return "Light Right"
            case .setupDesk: return "Desk Setup"
            case .officeBooks: return "Office Books"
            case .officeTechnology: return "Office Technology"
            case .storageInOffice: return "Storage in Office"
            case .theMailAndStuff: return "The Mail and Stuff"
                
            }
        }
        var usageDescription: String {
            switch self {
            case .lightRight: return "Light Right"
            case .setupDesk: return "Desk Setup"
            case .officeBooks: return "Office Books"
            case .officeTechnology: return "Office Technology"
            case .storageInOffice: return "Storage in Office"
            case .chillOutZone: return "Chill Zone"
            case .theMailAndStuff: return "The Mail and Stuff"
            case .inspirationSpace: return "Inspiration Space"
            case .meetingZone: return "Meeting Zone"
                
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .setupDesk, .lightRight, .storageInOffice, .officeTechnology, .officeBooks, .chillOutZone, .inspirationSpace, .meetingZone, .theMailAndStuff: return true
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .setupDesk, .lightRight, .storageInOffice, .officeTechnology, .officeBooks, .chillOutZone, .inspirationSpace, .meetingZone, .theMailAndStuff:
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
        case flatScreenTVZone = "Flat Screen TV Zone"
        case bedroomLighting = "Bedroom Lighting"
        case comfortableChair = "Comfortable Chair"
        case writingDesk = "Writing Desk"
        case simpleDecor = "Simple Decor"
        case whereTheClothesAre = "Where the Clothes Are"
        case theHangingClothes = "The Hanging Clothes"
        case bedroomShelves = "Bedroom Shelves"
        case bedroomTrunkBasket = "Bedroom Trunk & Basket"
        case underBedStorageSpace = "Under-Bed Storage Space"
        case aGoodNightSleep = "A Good Night Sleep"
        case bedsideTable = "Bedside Table"
        case bedsideDrawers = "Bedside Drawers"
        case dresserMirror = "Dresser Mirror"
        case topOfDresser = "Top of Dresser"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .flatScreenTVZone: return "Flat Screen TV Zone"
            case .bedroomLighting: return "Bedroom Lighting"
            case .comfortableChair: return "Clean your dining room"
            case .writingDesk: return "Writing Desk"
            case .simpleDecor: return "Simple Decor"
            case .whereTheClothesAre: return "Where the Clothes Are"
            case .theHangingClothes: return "The Hanging Clothes"
            case .bedroomShelves: return "Bedroom Shelves"
            case .bedroomTrunkBasket: return "Bedroom Trunk & Basket"
            case .underBedStorageSpace: return "Under-Bed Storage Space"
            case .aGoodNightSleep: return "A Good Night Sleep"
            case .bedsideTable: return "bedsideTable"
            case .bedsideDrawers: return "Bedside Drawers"
            case .dresserMirror: return "Dresser Mirror"
            case .topOfDresser: return "Top of Dresser"
            }
        }
        var usageDescription: String {
            switch self {
            case .flatScreenTVZone: return "Flat Screen TV Zone"
            case .bedroomLighting: return "Bedroom Lighting"
            case .comfortableChair: return "Clean your dining room"
            case .writingDesk: return "Writing Desk"
            case .simpleDecor: return "Simple Decor"
            case .whereTheClothesAre: return "Where the Clothes Are"
            case .theHangingClothes: return "The Hanging Clothes"
            case .bedroomShelves: return "Bedroom Shelves"
            case .bedroomTrunkBasket: return "Bedroom Trunk & Basket"
            case .underBedStorageSpace: return "Under-Bed Storage Space"
            case .aGoodNightSleep: return "A Good Night Sleep"
            case .bedsideTable: return "bedsideTable"
            case .bedsideDrawers: return "Bedside Drawers"
            case .dresserMirror: return "Dresser Mirror"
            case .topOfDresser: return "Top of Dresser"
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .aGoodNightSleep, .bedroomLighting, .bedroomShelves, .bedroomTrunkBasket, .bedsideDrawers, .bedsideTable, .comfortableChair, .writingDesk, .simpleDecor, .whereTheClothesAre, .theHangingClothes, .dresserMirror, .topOfDresser, .flatScreenTVZone, .underBedStorageSpace: return true
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .aGoodNightSleep, .bedroomLighting, .bedroomShelves, .bedroomTrunkBasket, .bedsideDrawers, .bedsideTable, .comfortableChair, .writingDesk, .simpleDecor, .whereTheClothesAre, .theHangingClothes, .dresserMirror, .topOfDresser, .flatScreenTVZone, .underBedStorageSpace:
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
        case playroomZoneSpace = "Playroom Zone Space"
        case playroomExplorationSpace = "Playroom Exploration Space"
        case playroomTechZoneSpace = "Playroom Tech Zone Space"
        case playroomStudyZoneSpace = "Playroom Study Zone Space"
        case playroomSensoryZoneSpace = "Playroom Sensory Zone Space"
        case playroomPerformanceZoneSpace = "Playroom Performance Zone Space"
        case playroomActivityZoneSpace = "Playroom Activity Zone Space"
        case playroomBoardGameZoneSpace = "Playroom Board Game Zone Space"
        case playroomImaginationZoneSpace = "Playroom Imagination Zone Space"
        case playroomBuildingZoneSpace = "Playroom Building Zone Space"
        case playroomQuietZoneSpace = "Playroom Quiet Zone Space"
        case playroomCraftZoneSpace = "Playroom Craft Zone Space"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .playroomCraftZoneSpace: return "Playroom Craft Zone Space"
            case .playroomQuietZoneSpace: return "Playroom Quiet Zone Space"
            case .playroomBuildingZoneSpace: return "Playroom Building Zone Space"
            case .playroomImaginationZoneSpace: return "Playroom Imagination Zone Space"
            case .playroomBoardGameZoneSpace: return "Playroom Board Game Zone Space"
            case .playroomActivityZoneSpace: return "Playroom Activity Zone Space"
            case .playroomPerformanceZoneSpace: return "Playroom Performance Zone Space"
            case .playroomSensoryZoneSpace: return "Playroom Sensory Zone Space"
            case .playroomStudyZoneSpace: return "Playroom Study Zone Space"
            case .playroomTechZoneSpace: return "Playroom Tech Zone Space"
            case .playroomExplorationSpace: return "Playroom Exploration Space"
            case .playroomZoneSpace: return "Playroom Zone Space"
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
            case .playroomCraftZoneSpace: return "Playroom Craft Zone Space"
            case .playroomQuietZoneSpace: return "Playroom Quiet Zone Space"
            case .playroomBuildingZoneSpace: return "Playroom Building Zone Space"
            case .playroomImaginationZoneSpace: return "Playroom Imagination Zone Space"
            case .playroomBoardGameZoneSpace: return "Playroom Board Game Zone Space"
            case .playroomActivityZoneSpace: return "Playroom Activity Zone Space"
            case .playroomPerformanceZoneSpace: return "Playroom Performance Zone Space"
            case .playroomSensoryZoneSpace: return "Playroom Sensory Zone Space"
            case .playroomStudyZoneSpace: return "Playroom Study Zone Space"
            case .playroomTechZoneSpace: return "Playroom Tech Zone Space"
            case .playroomExplorationSpace: return "Playroom Exploration Space"
            case .playroomZoneSpace: return "Playroom Zone Space"
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
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates, .playroomZoneSpace, .playroomExplorationSpace, .playroomTechZoneSpace, .playroomStudyZoneSpace, .playroomSensoryZoneSpace, .playroomPerformanceZoneSpace, .playroomActivityZoneSpace, .playroomBoardGameZoneSpace, .playroomImaginationZoneSpace, .playroomBuildingZoneSpace, .playroomQuietZoneSpace, .playroomCraftZoneSpace: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .declutter, .organize, .clean, .polish, .tableLinens, .accessories, .repairsAndUpdates, .playroomZoneSpace, .playroomExplorationSpace, .playroomTechZoneSpace, .playroomStudyZoneSpace, .playroomSensoryZoneSpace, .playroomPerformanceZoneSpace, .playroomActivityZoneSpace, .playroomBoardGameZoneSpace, .playroomImaginationZoneSpace, .playroomBuildingZoneSpace, .playroomQuietZoneSpace, .playroomCraftZoneSpace:
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
        case bathingSpaces = "Bathing Surfaces"
        case cleaningSuppliesSpaces = "Bathroom Cleaning SubTasks"
        case toiletrySpaces = "Toiletry Spaces"
        case towelStorageSpace = "Towel Storage Space"
        case vanitySpace = "Vanity Space"
        case laundrySpace = "Dirty Laundry"
        case lightingSpaces = "Lighting Spaces"
        case groomingZoneSpaces = "Grooming Zone Spaces"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .bathingSpaces: return "clean the bathroom"
            case .cleaningSuppliesSpaces: return "clean the bathroom"
            case .toiletrySpaces: return "clean the bathroom"
            case .towelStorageSpace: return "clean the bathroom"
            case .vanitySpace: return "clean the bathroom"
            case .laundrySpace: return "clean the bathroom"
            case .lightingSpaces: return "clean the bathroom"
            case .groomingZoneSpaces: return "clean the bathroom"
            }
        }
        var usageDescription: String {
            switch self {
            case .bathingSpaces: return "clean the bathroom"
            case .cleaningSuppliesSpaces: return "clean the bathroom"
            case .toiletrySpaces: return "clean the bathroom"
            case .towelStorageSpace: return "clean the bathroom"
            case .vanitySpace: return "clean the bathroom"
            case .laundrySpace: return "clean the bathroom"
            case .lightingSpaces: return "clean the bathroom"
            case .groomingZoneSpaces: return "clean the bathroom"
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool{
            switch self {
            case .bathingSpaces: return true
            case .cleaningSuppliesSpaces: return true
            case .toiletrySpaces: return true
            case .towelStorageSpace: return true
            case .vanitySpace: return true
            case .laundrySpace: return true
            case .lightingSpaces: return true
            case .groomingZoneSpaces: return true
                
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .bathingSpaces:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .cleaningSuppliesSpaces:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .laundrySpace:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .lightingSpaces:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .toiletrySpaces:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .towelStorageSpace:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .vanitySpace:
                return [
                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
                ]
            case .groomingZoneSpaces:
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
        static var bathingSubTask: [BathroomSubTaskType] {
            return [.bathingSpaces]
        }
        static var groomingSubTask: [BathroomSubTaskType] {
            return [.groomingZoneSpaces]
        }
        static var vanitySubTask: [BathroomSubTaskType] {
            return [.vanitySpace]
        }
        static var laundrySubTask: [BathroomSubTaskType] {
            return [.laundrySpace]
        }
        static var cleaningSpaceSubtask: [BathroomSubTaskType] {
            return [.cleaningSuppliesSpaces]
        }
        static var lightZonesSubTask: [BathroomSubTaskType] {
            return [.lightingSpaces]
        }
        static var toiletrySubTask: [BathroomSubTaskType] {
            return [.toiletrySpaces]
        }
        static var towelStorageSubTask: [BathroomSubTaskType] {
            return [.towelStorageSpace]
        }
        static var SubTaskType: [any SubTaskType] {
            return BathroomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }

    enum StorageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case allTheClosets = "All the Closets"
        case allTheNooks = "All the Nooks"
        case longTermStorage = "Long-Term Storage"
        
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .allTheClosets: return "Organize all the closets."
            case .allTheNooks: return "Organize all the nooks."
            case .longTermStorage: return "Organize all the long-term storage."
            }
        }
        var usageDescription: String {
            switch self {
            case .allTheClosets: return "Organize all the closets."
            case .allTheNooks: return "Organize all the nooks."
            case .longTermStorage: return "Organize all the long-term storage."
            }
        }
        
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .allTheClosets, .allTheNooks, .longTermStorage: return true
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .allTheClosets:
                return [
                    MiniTaskTypeBox(StorageMiniTaskType.remove)!,
                    MiniTaskTypeBox(StorageMiniTaskType.clean)!,
                    MiniTaskTypeBox(StorageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(StorageMiniTaskType.group)!,
                    MiniTaskTypeBox(StorageMiniTaskType.sort)!,
                    MiniTaskTypeBox(StorageMiniTaskType.contain)!,
                    MiniTaskTypeBox(StorageMiniTaskType.label)!
                ]
            case .allTheNooks:
                return [
                    MiniTaskTypeBox(StorageMiniTaskType.remove)!,
                    MiniTaskTypeBox(StorageMiniTaskType.clean)!,
                    MiniTaskTypeBox(StorageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(StorageMiniTaskType.group)!,
                    MiniTaskTypeBox(StorageMiniTaskType.sort)!,
                    MiniTaskTypeBox(StorageMiniTaskType.contain)!,
                    MiniTaskTypeBox(StorageMiniTaskType.label)!
                ]
            case .longTermStorage:
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
        case carCleaningSubTask = "Car Cleaning Sub Task"
        case garageDoorSubTask = "Garage Door Sub Task"
        case vehicleParkingSubTask = "Vehicle Parking Sub Task"
        case tireStorageSubtask = "Tire Storage Subtask"
        case workBenchSubTask = "Work Bench Sub Task"
        case chargingStationSubTask = "Charging Station Sub Task"
        case toolCleaningSubTask = "Tool Cleaning Sub Task"
        case handToolSubTask = "Hand Tool Sub Task"
        case powerToolSubTask = "Power Tool Sub Task"
        case smallPartsSubTask = "Small Parts Sub Task"
        case safetyEquipmentSubTask = "Safety Equipment Sub Task"
        case gardenToolSubTask = "Garden Tool Sub Task"
        case lawnEquipmentSubTask = "Lawn Equipment Sub Task"
        case outdoorFurnitureSubTask = "Outdoor Furniture Sub Task"
        case plantingSuppliesSubTask = "Planting Supplies Sub Task"
        case pottingBenchSubTask = "Potting Bench Sub Task"
        case hoseStorageSubTask = "Hose Storage Sub Task"
        case ballStorageSubTask = "Ball Storage Sub Task"
        case bikeRackSubTask = "Bike Rack Sub Task"
        case sportsEquipmentRackSubTask = "Sports Equipment Rack Sub Task"
        case sportsGearSubTask = "Sports Gear Sub Task"
        case holidayDecorSubTask = "Holiday Decor Sub Task"
        case seasonalToys = "Seasonal Toys"
        case winterGear = "Winter Gear"
        case outdoorDecorSubTask = "Outdoor Decor Sub Task"
        case cleaningSuppliesSubTask = "Garage Clean Supplies"
        case miscHouseholdItemsSubTask = "Misc Household Items SubTask"
        case overflowPantrySubtask = "Overflow Pantry Subtask"
        case paperGoodsSubTask = "Paper Goods SubTask"
        case emergencySuppliesSubTask = "Emergency Supplies SubTask"
        case compostingAreaSubTask = "Composting Area SubTask"
        case recyclingBinSubTask = "Recycling Bin SubTask"
        case trashBinSubTask = "Trash Bin SubTask"
        case hazardousWasteSubTask = "Hazardous Waste SubTask"
        case donationBinAreaSubTask = "Donation Bin Area SubTask"
        case cleaningMaintenanceSubTasks = "Cleaning Maintenance SubTasks"
        case houseToolsSubTask = "House Tools SubTask"
        case dIYRepairSubTask = "DIY Repair SubTask"
        case yardEquipmentSubTask = "Yard Equipment SubTask"
        case clothingFoldingSubTask = "Clothing Folding"
        case hatCoatHooks = "Hat Coat Hooks"
        case laundrySubTasks = "Laundry SubTasks"
        case bootShoeStorage = "Boot Shoe Storage"
        case petCareSubTask = "Pet Care SubTask"
        case extraLuggageSubTask = "Extra Luggage SubTask"
        case outdoorEquipmentSubTask = "Outdoor Equipment SubTask"
        case seasonalItemsSubTask = "Seasonal Items SubTask"
        case longItemRackSubTask = "Long Item Rack SubTask"
        
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .carCleaningSubTask: return "Wash your car with a car wash."
            case .garageDoorSubTask: return "Open your garage door."
            case .vehicleParkingSubTask: return "Park your vehicle."
            case .tireStorageSubtask: return "Store your tires."
            case .workBenchSubTask: return "Clean your workbench."
            case .chargingStationSubTask: return "Charge your devices."
            case .toolCleaningSubTask: return "Clean your tools."
            case .handToolSubTask: return "Clean your hand tools."
            case .powerToolSubTask: return "Clean your power tools."
            case .smallPartsSubTask: return "Clean your small parts."
            case .safetyEquipmentSubTask: return "Clean your safety equipment."
            case .gardenToolSubTask: return "Clean your garden tools."
            case .lawnEquipmentSubTask: return "Clean your lawn equipment."
            case .outdoorFurnitureSubTask: return "Clean your outdoor furniture."
            case .plantingSuppliesSubTask: return "Clean your planting supplies."
            case .pottingBenchSubTask: return "Clean your potting bench."
            case .hoseStorageSubTask: return "Clean your hose storage."
            case .ballStorageSubTask: return "Clean your ball storage."
            case .bikeRackSubTask: return "Clean your bike rack."
            case .sportsEquipmentRackSubTask: return "Clean your sports equipment rack."
            case .sportsGearSubTask: return "Clean your sports gear."
            case .holidayDecorSubTask: return "Clean your holiday decor."
            case .seasonalToys: return "Clean your seasonal toys."
            case .winterGear: return "Clean your winter gear."
            case .outdoorDecorSubTask: return "Clean your outdoor decor."
            case .cleaningSuppliesSubTask: return "Clean your cleaning supplies."
            case .miscHouseholdItemsSubTask: return "Clean your misc. household items."
            case .overflowPantrySubtask: return "Clean your overflow pantry."
            case .paperGoodsSubTask: return "Clean your paper goods."
            case .emergencySuppliesSubTask: return "Clean your emergency supplies."
            case .compostingAreaSubTask: return "Clean your composting area."
            case .recyclingBinSubTask: return "Clean your recycling bin."
            case .trashBinSubTask: return "Clean your trash bin."
            case .hazardousWasteSubTask: return "Clean your hazardous waste."
            case .donationBinAreaSubTask: return "Clean your donation bin area."
            case .cleaningMaintenanceSubTasks: return "Clean your cleaning maintenance sub-tasks."
            case .houseToolsSubTask: return "Clean your house tools."
            case .dIYRepairSubTask: return "Clean your DIY repair sub-tasks."
            case .yardEquipmentSubTask: return "Clean your yard equipment."
            case .clothingFoldingSubTask: return "Clean your clothing folding sub-tasks."
            case .hatCoatHooks: return "Clean your hat/coat hooks."
            case .laundrySubTasks: return "Clean your laundry sub-tasks."
            case .bootShoeStorage: return "Clean your boot/shoe storage."
            case .petCareSubTask: return "Clean your pet care sub-tasks."
            case .extraLuggageSubTask: return "Clean your extra luggage."
            case .outdoorEquipmentSubTask: return "Clean your outdoor equipment."
            case .seasonalItemsSubTask: return "Clean your seasonal items."
            case .longItemRackSubTask: return "Clean your long item rack."
            }
        }
        var usageDescription: String {
            switch self {
            case .carCleaningSubTask: return "Clean your car."
            case .garageDoorSubTask: return "Clean your garage door."
            case .vehicleParkingSubTask: return "Clean your vehicle parking."
            case .tireStorageSubtask: return "Clean your tire storage."
            case .workBenchSubTask: return "Clean your work bench."
            case .chargingStationSubTask: return "Clean your charging station."
            case .toolCleaningSubTask: return "Clean your tool cleaning sub-tasks."
            case .handToolSubTask: return "Clean your hand tool sub-tasks."
            case .powerToolSubTask: return "Clean your power tool sub-tasks."
            case .smallPartsSubTask: return "Clean your small parts sub-tasks."
            case .safetyEquipmentSubTask: return    "Clean your safety equipment sub-tasks."
            case .gardenToolSubTask: return "Clean your garden tool sub-tasks."
            case .lawnEquipmentSubTask: return "Clean your lawn equipment sub-tasks."
            case .outdoorFurnitureSubTask: return "Clean your outdoor furniture sub-tasks."
            case .plantingSuppliesSubTask: return "Clean your planting supplies sub-tasks."
            case .pottingBenchSubTask: return "Clean your potting bench sub-tasks."
            case .hoseStorageSubTask: return "Clean your hose storage sub-tasks."
            case .ballStorageSubTask: return "Clean your ball storage sub-tasks."
            case .bikeRackSubTask: return "Clean your bike rack sub-tasks."
            case .sportsEquipmentRackSubTask: return "Clean your sports equipment rack sub-tasks."
            case .sportsGearSubTask: return "Clean your sports gear sub-tasks."
            case .holidayDecorSubTask: return "Clean your holiday decor sub-tasks."
            case .seasonalToys: return "Clean your seasonal toys."
            case .winterGear: return "Clean your winter gear."
            case .outdoorDecorSubTask: return "Clean your outdoor decor sub-tasks."
            case .cleaningSuppliesSubTask: return "Clean your cleaning supplies sub-tasks."
            case .miscHouseholdItemsSubTask: return "Clean your misc. household items sub-tasks."
            case .overflowPantrySubtask: return "Clean your overflow pantry sub-tasks."
            case .paperGoodsSubTask: return "Clean your paper goods sub-tasks."
            case .emergencySuppliesSubTask: return "Clean your emergency supplies sub-tasks."
            case .compostingAreaSubTask: return "Clean your composting area sub-tasks."
            case .recyclingBinSubTask: return "Clean your recycling bin sub-tasks."
            case .trashBinSubTask: return "Clean your trash bin sub-tasks."
            case .hazardousWasteSubTask: return "Clean your hazardous waste sub-tasks."
            case .donationBinAreaSubTask: return "Clean your donation bin area sub-tasks."
            case .cleaningMaintenanceSubTasks: return "Clean your cleaning maintenance sub-tasks."
            case .houseToolsSubTask: return "Clean your house tools sub-tasks."
            case .dIYRepairSubTask: return "Clean your DIY repair sub-tasks."
            case .yardEquipmentSubTask: return "Clean your yard equipment sub-tasks."
            case .clothingFoldingSubTask: return "Clean your clothing folding sub-tasks."
            case .hatCoatHooks: return "Clean your hat, coat, and hooks sub-tasks."
            case .laundrySubTasks: return "Clean your laundry sub-tasks."
            case .bootShoeStorage: return "Clean your boot, shoe, and storage sub-tasks."
            case .petCareSubTask: return "Clean your pet care sub-tasks."
            case .extraLuggageSubTask: return "Clean your extra luggage sub-tasks."
            case .outdoorEquipmentSubTask: return "Clean your outdoor equipment sub-tasks."
            case .seasonalItemsSubTask: return "Clean your seasonal items sub-tasks."
            case .longItemRackSubTask: return "Clean your long item rack sub-tasks."
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .carCleaningSubTask, .garageDoorSubTask, .vehicleParkingSubTask, .tireStorageSubtask, .chargingStationSubTask, .workBenchSubTask,  .toolCleaningSubTask, .handToolSubTask, .powerToolSubTask, .smallPartsSubTask, .safetyEquipmentSubTask, .gardenToolSubTask, .lawnEquipmentSubTask, .outdoorFurnitureSubTask, .plantingSuppliesSubTask, .pottingBenchSubTask, .hoseStorageSubTask, .ballStorageSubTask, .bikeRackSubTask, .sportsEquipmentRackSubTask, .sportsGearSubTask, .holidayDecorSubTask, .seasonalToys, .winterGear, .outdoorDecorSubTask, .cleaningSuppliesSubTask, .miscHouseholdItemsSubTask, .overflowPantrySubtask, .paperGoodsSubTask, .emergencySuppliesSubTask, .compostingAreaSubTask, .recyclingBinSubTask, .trashBinSubTask, .hazardousWasteSubTask, .donationBinAreaSubTask, .cleaningMaintenanceSubTasks, .houseToolsSubTask, .dIYRepairSubTask, .yardEquipmentSubTask, .clothingFoldingSubTask, .hatCoatHooks, .laundrySubTasks, .bootShoeStorage, .petCareSubTask, .extraLuggageSubTask, .outdoorEquipmentSubTask, .seasonalItemsSubTask, .longItemRackSubTask: return true
            }
        }
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .carCleaningSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .garageDoorSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .vehicleParkingSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .tireStorageSubtask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .workBenchSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .chargingStationSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .toolCleaningSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .handToolSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .powerToolSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .smallPartsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .safetyEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .gardenToolSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .lawnEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .outdoorFurnitureSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .plantingSuppliesSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
                
            case .pottingBenchSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .hoseStorageSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .ballStorageSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .bikeRackSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .sportsEquipmentRackSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .sportsGearSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .holidayDecorSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
                
            case .seasonalToys:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .winterGear:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .outdoorDecorSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .cleaningSuppliesSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .miscHouseholdItemsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .overflowPantrySubtask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .paperGoodsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .emergencySuppliesSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .compostingAreaSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .recyclingBinSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .trashBinSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .hazardousWasteSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .donationBinAreaSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .cleaningMaintenanceSubTasks:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .houseToolsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .dIYRepairSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .yardEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .clothingFoldingSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .hatCoatHooks:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .laundrySubTasks:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .bootShoeStorage:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .petCareSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .extraLuggageSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .outdoorEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .seasonalItemsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .longItemRackSubTask:
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
    
