//
//  GarageSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

//protocol GarageSpaceType: SpaceType, Codable, CaseIterable, Identifiable {
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

enum GarageParkingSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case vehicleParking = "Vehicle Parking"
    case carCleaningSupplies = "Car Cleaning Supplies"
    case garageDoorArea = "Garage Door Area"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .vehicleParking: return "Where cars, bikes, or motorcycles are parked."
        case .carCleaningSupplies: return "Storage for items like car soap, rags, and other car maintenance items."
        case .garageDoorArea: return "Space to keep clear for access or sensors for the garage door."
        }
    }
    var usageDescription: String {
        switch self {
        case .vehicleParking: return "String Description"
        case .carCleaningSupplies: return "String Description"
        case .garageDoorArea: return "String Description"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Garage" }
    var category: String { "Furniture" }
    
    static var allGarageSpaceTypes: [GarageParkingSpaceType] {
        return GarageParkingSpaceType.allCases
    }
}

enum GarageToolZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case handToolStorage = "Hand Tool Storage"
    case powerToolStorage = "Power Tool Storage"
    case workBench = "Work Bench"
    case toolCleaningMaintenance = "Tool Cleaning Maintenance"

var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

var instructions: String {
    switch self {
    case .handToolStorage: return "Area for hammers, screwdrivers, wrenches, and other hand tools."
    case .powerToolStorage: return "Shelves or cabinets dedicated to drills, saws, and other electric tools."
    case .workBench: return "Dedicated space for tool usage and assembly projects."
    case .toolCleaningMaintenance: return "Place to clean and maintain tools."
    }
}
var usageDescription: String {
    switch self {
    case .handToolStorage: return "String Description"
    case .powerToolStorage: return "String Description"
    case .workBench: return "String Description"
    case .toolCleaningMaintenance: return "String Description"
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageToolZoneSpaceType] {
    return GarageToolZoneSpaceType.allCases
    }
}

enum GarageGardenOutdoorZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case gardenToolStorage = "Garden Tool Storage"
    case plantingSupplies = "Planting Supplies"
    case lawnEquipment = "Lawn Equipment"
    case outdoorDecorationsFurniture = "Outdoor Decorations Furniture"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

var instructions: String {
    switch self {
    case .gardenToolStorage: return "For shovels, rakes, hoes, and other outdoor equipment."
    case .plantingSupplies: return "Shelves for seeds, fertilizer, and potting soil."
    case .lawnEquipment: return "Space for lawnmowers, trimmers, and leaf blowers."
    case .outdoorDecorationsFurniture: return "Storage for patio furniture or seasonal decorations."
    }
}
var usageDescription: String {
    switch self {
    case .gardenToolStorage: return "String Description"
    case .plantingSupplies: return "String Description"
    case .lawnEquipment: return "String Description"
    case .outdoorDecorationsFurniture: return "String Description"
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageToolZoneSpaceType] {
    return GarageToolZoneSpaceType.allCases
    }
}

enum GarageSportsActivityGearZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case ballStorage = "Ball Storage"
    case bikeScooterRacks = "Bike Scooter Racks"
    case sportsEquipmentShelf = "Sports Equipment Shelf"
    case seasonalSportsGear = "Seasonal Sports Gear"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .ballStorage: return "Bins for basketballs, soccer balls, and other sports balls."
        case .bikeScooterRacks: return "Dedicated space for bicycles, scooters, or skateboards."
        case .sportsEquipmentShelf: return "Space for helmets, gloves, and protective gear."
        case .seasonalSportsGear: return "Storage for skis, snowboards, or other seasonal equipment."
        }
    }
var usageDescription: String {
    switch self {
    case .ballStorage: return "String Description"
    case .bikeScooterRacks: return "String Description"
    case .sportsEquipmentShelf: return "String Description"
    case .seasonalSportsGear: return "String Description"
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageSportsActivityGearZoneSpaceType] {
    return GarageSportsActivityGearZoneSpaceType.allCases
    }
}

enum GarageSeasonalStorageZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case holidayDecorations = "Holiday Decorations"
    case winterClothingGear = "Winter Clothing Gear"
    case seasonalToysOutdoorGear = "Seasonal Toys Outdoor Gear"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .holidayDecorations: return "Shelves or bins for holiday lights, ornaments, etc.."
        case .winterClothingGear: return "Space for jackets, scarves, and seasonal outdoor gear."
        case .seasonalToysOutdoorGear: return "Storage for pool toys, sleds, and other seasonal outdoor equipment."
        }
    }
var usageDescription: String {
    switch self {
    case .holidayDecorations: return "Place holiday decorations here."
    case .winterClothingGear: return "Place winter clothing gear here."
    case .seasonalToysOutdoorGear: return "Place seasonal toys here."
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageSeasonalStorageZoneSpaceType] {
    return GarageSeasonalStorageZoneSpaceType.allCases
    }
}
enum GarageHouseHoldStorageZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case overflowPanty = "Overflow Panty"
    case cleaningSupplies = "Cleaning Supplies"
    case paperGoodsStorage = "Paper Goods Storage"
    case miscellaneousHouseholdItems = "Miscellaneous Household Items"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .overflowPanty: return "Storage for bulk food or extra pantry items.."
        case .cleaningSupplies: return "Area for brooms, mops, and bulk cleaning supplies."
        case .paperGoodsStorage: return "Space for paper towels, toilet paper, etc."
        case .miscellaneousHouseholdItems: return "Storage for items not frequently used like spare furniture or extra kitchen appliances."
        }
    }
var usageDescription: String {
    switch self {
    case .overflowPanty: return "Place overflow panties here."
    case .cleaningSupplies: return "Place cleaning supplies here."
    case .paperGoodsStorage: return "Place paper goods here."
    case .miscellaneousHouseholdItems: return "Place miscellaneous household items here."
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageHouseHoldStorageZoneSpaceType] {
    return GarageHouseHoldStorageZoneSpaceType.allCases
    }
}

enum GarageWasteRecyclingZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case trashBinStorage = "Trash Bin Storage"
    case recyclingBinStorage = "Recycling Bin Storage"
    case compostingArea
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .trashBinStorage: return "Space for general trash bins."
        case .recyclingBinStorage: return "Separate space for recyclables like plastics, paper, and glass."
        case .compostingArea: return "Space for composting bins, if applicable."
        }
    }
var usageDescription: String {
    switch self {
    case .trashBinStorage: return "Space for general trash bins."
    case .recyclingBinStorage: return "Separate space for recyclables like plastics, paper, and glass."
    case .compostingArea: return "Space for composting bins, if applicable."
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageWasteRecyclingZoneSpaceType] {
    return GarageWasteRecyclingZoneSpaceType.allCases
    }
}
enum GarageMaintenanceZoneSpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case houseMaintenanceTools = "House Maintenance Tools"
    case cleaningMaintenanceProducts = "Cleaning Maintenance Products"
    case repairArea = "Repair Area"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .houseMaintenanceTools: return "Area for house maintenance tools like plumbing or electrical supplies.s"
        case .cleaningMaintenanceProducts: return "Storage for items like wood polish, filters, or air fresheners."
        case .repairArea: return "Space for minor household repairs."
        }
    }
var usageDescription: String {
    switch self {
    case .houseMaintenanceTools: return "House Maintenance Tools"
    case .cleaningMaintenanceProducts: return "Cleaning Maintenance Products"
    case .repairArea: return "Repair Area"
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageMaintenanceZoneSpaceType] {
    return GarageMaintenanceZoneSpaceType.allCases
    }
}
enum GarageMudroomLaundrySpaceType: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case shoeBootStorage = "Shoe Boot Storage"
    case coatHatHooks = "Coat Hats Hooks"
    case laundrySupplies = "Laundry Supplies"
    case clothingFoldingHangingArea = "Clothing Folding Hanging Area"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .shoeBootStorage: return "Dedicated shelves or cubbies for shoes and boots."
        case .coatHatHooks: return "Wall hooks or racks for jackets, hats, and scarves."
        case .laundrySupplies: return "Shelves for detergent, fabric softeners, and dryer sheets."
        case .clothingFoldingHangingArea: return "A space for folding and hanging clothes post-laundry."
        }
    }
var usageDescription: String {
    switch self {
    case .shoeBootStorage: return "Area for house maintenance tools like plumbing or electrical supplies.s"
    case .coatHatHooks: return "Storage for items like wood polish, filters, or air fresheners."
    case .laundrySupplies: return "Space for minor household repairs."
    case .clothingFoldingHangingArea: return "Space for storing clothing."
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageMudroomLaundrySpaceType] {
    return GarageMudroomLaundrySpaceType.allCases
    }
}

enum GarageOverheadStorageZone: String, GarageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case seasonalItems = "Seasonal Items"
    case extraLuggage = "Extra Luggage"
    case outdoorEquipment = "Outdoor Equipment"
    
var id: UUID { UUID() }
var name: String { rawValue }
var imageName: String { rawValue }

    var instructions: String {
        switch self {
        case .seasonalItems: return "Storage for items you don’t frequently need, like holiday decorations."
        case .extraLuggage: return "Space for suitcases and travel bags."
        case .outdoorEquipment: return "Space for suitcases and travel bags."
        }
    }
var usageDescription: String {
    switch self {
    case .seasonalItems: return "Dedicated shelves or cubbies for shoes and boots."
    case .extraLuggage: return "Wall hooks or racks for jackets, hats, and scarves."
    case .outdoorEquipment: return "Shelves for detergent, fabric softeners, and dryer sheets."
    }
}
var weight: Double { 5.0 }
var type: String { "Garage" }
var category: String { "Furniture" }

static var allGarageSpaceTypes: [GarageOverheadStorageZone] {
    return GarageOverheadStorageZone.allCases
    }
}


//extension GarageSpaceType {
//    static var allGarageSpaceTypes: [any GarageSpaceType] {
//        return [
//            GarageParkingSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageToolZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageGardenOutdoorZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageSportsActivityGearZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageSeasonalStorageZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageHouseHoldStorageZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageWasteRecyclingZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageMaintenanceZoneSpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageMudroomLaundrySpaceType.allCases.map { $0 as any GarageSpaceType},
//            GarageOverheadStorageZone.allCases.map { $0 as any GarageSpaceType}
//        ].flatMap { $0 }
//    }
//}
