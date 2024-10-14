//
//  GarageSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

enum GarageSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    case vehicleParking = "Vehicle Parking"
    case carCleaningSupplies = "Car Cleaning Supplies"
    case garageDoorArea = "Garage Door Area"
    case tireStorageCorner = "Tire Storage Corner"
    case chargingStation = "Charging Station"
    // GarageTool
    case handToolStorage = "Hand Tool Storage"
    case powerToolStorage = "Power Tool Storage"
    case workBench = "Work Bench"
    case toolCleaningMaintenance = "Tool Cleaning Maintenance"
    case smallPartsOrganizer = "Small Parts Organizer"
    case safetyEquipmentStation = "Safety Equipment Station"
    // GarageGarden
    case gardenToolStorage = "Garden Tool Storage"
    case plantingSupplies = "Planting Supplies"
    case lawnEquipment = "Lawn Equipment"
    case outdoorDecorationsFurniture = "Outdoor Decorations Furniture"
    case pottingBench = "Potting Bench"
    case hoseStorage = "Hose Storage"
    // GarageSportsGear
    case ballStorage = "Ball Storage"
    case bikeRack = "Bike Rack"
    case sportsEquipmentRack = "Sports Equipment Rack"
    case sportsGear = "Seasonal Sports Gear"
    // GarageSeasonalStorage
    case holidayDecorations = "Holiday Decorations"
    case winterClothingGear = "Winter Clothing Gear"
    case seasonalToysOutdoorGear = "Seasonal Toys Outdoor Gear"
    case outdoorFurnitureStorage = "Outdoor Furniture Storage"
    // GarageHouseholdStorage
    case overflowPantry = "Overflow Pantry"
    case cleaningSupplies = "Cleaning Supplies"
    case paperGoodsStorage = "Paper Goods Storage"
    case miscellaneousHouseholdItems = "Miscellaneous Household Items"
    case emergencySupplies = "Emergency Supplies"
    // GarageWasteRecycling
    case trashBinArea = "Trash Bin Area"
    case recyclingBinArea = "Recycling Bin Area"
    case compostingArea = "Composting Area"
    case hazardousWasteArea = "Hazardous Waste Area"
    case donationBinArea = "Donation Bin Area"
    // GarageMaintenance
    case houseMaintenanceTools = "House Maintenance Tools"
    case cleaningMaintenanceProducts = "Cleaning Maintenance Products"
    case dIYRepairArea = "DIY Repair Area"
    case yardMaintenanceEquipmentZone = "Yard Maintenance"
    // GarageMudroomLaundry
    case shoeBootStorage = "Shoe Boot Storage"
    case coatHatHooks = "Coat Hats Hooks"
    case laundrySupplies = "Laundry Supplies"
    case clothingFoldingHangingArea = "Clothing Folding Hanging Area"
    case petCare = "Pet Care"
    // GarageOverhead
    case seasonalItems = "Seasonal Items"
    case extraLuggage = "Extra Luggage"
    case outdoorEquipment = "Outdoor Equipment"
    case longItemRack = "Long Item Rack"
    
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .vehicleParking: return "Where cars, bikes, or motorcycles are parked."
        case .carCleaningSupplies: return "Storage for items like car soap, rags, and other car maintenance items."
        case .garageDoorArea: return "Space to keep clear for access or sensors for the garage door."
        case .tireStorageCorner: return "Space to store tires."
        case .chargingStation: return "Space to charge vehicles."
        case .handToolStorage: return "Area for hammers, screwdrivers, wrenches, and other hand tools."
        case .powerToolStorage: return "Shelves or cabinets dedicated to drills, saws, and other electric tools."
        case .workBench: return "Dedicated space for tool usage and assembly projects."
        case .toolCleaningMaintenance: return "Place to clean and maintain tools."
        case .smallPartsOrganizer: return "Small Parts Organizer"
        case .safetyEquipmentStation: return "Safety Equipment Station"
        case .gardenToolStorage: return "For shovels, rakes, hoes, and other outdoor equipment."
        case .plantingSupplies: return "Shelves for seeds, fertilizer, and potting soil."
        case .lawnEquipment: return "Space for lawnmowers, trimmers, and leaf blowers."
        case .outdoorDecorationsFurniture: return "Storage for patio furniture or seasonal decorations."
        case .pottingBench: return "Potting Bench"
        case .hoseStorage: return "Hose Storage"
        case .ballStorage: return "Bins for basketballs, soccer balls, and other sports balls."
        case .bikeRack: return "Dedicated space for bicycles, scooters, or skateboards."
        case .sportsEquipmentRack: return "Space for helmets, gloves, and protective gear."
        case .sportsGear: return "Storage for skis, snowboards, or other seasonal equipment."
        case .holidayDecorations: return "Shelves or bins for holiday lights, ornaments, etc.."
        case .winterClothingGear: return "Space for jackets, scarves, and seasonal outdoor gear."
        case .seasonalToysOutdoorGear: return "Storage for pool toys, sleds, and other seasonal outdoor equipment."
        case .outdoorFurnitureStorage: return "Space for outdoor furniture."
        case .overflowPantry: return "Storage for bulk food or extra pantry items.."
        case .cleaningSupplies: return "Area for brooms, mops, and bulk cleaning supplies."
        case .paperGoodsStorage: return "Space for paper towels, toilet paper, etc."
        case .miscellaneousHouseholdItems: return "Storage for items not frequently used like spare furniture or extra kitchen appliances."
        case .emergencySupplies: return "Storage for emergency supplies."
        case .trashBinArea: return "Space for general trash bins."
        case .recyclingBinArea: return "Separate space for recyclables like plastics, paper, and glass."
        case .compostingArea: return "Space for composting bins, if applicable."
        case .hazardousWasteArea: return "Space for hazardous waste bins, if applicable."
        case .donationBinArea: return "Space for donation bins, if applicable."
        case .houseMaintenanceTools: return "Area for house maintenance tools like plumbing or electrical supplies.s"
        case .cleaningMaintenanceProducts: return "Storage for items like wood polish, filters, or air fresheners."
        case .dIYRepairArea: return "Space for minor household repairs."
        case .yardMaintenanceEquipmentZone: return "Space for yard maintenance equipment."
        case .shoeBootStorage: return "Dedicated shelves or cubbies for shoes and boots."
        case .coatHatHooks: return "Wall hooks or racks for jackets, hats, and scarves."
        case .laundrySupplies: return "Shelves for detergent, fabric softeners, and dryer sheets."
        case .clothingFoldingHangingArea: return "A space for folding and hanging clothes post-laundry."
        case .petCare: return "Space for pet care items."
        case .seasonalItems: return "Storage for items you don’t frequently need, like holiday decorations."
        case .extraLuggage: return "Space for suitcases and travel bags."
        case .outdoorEquipment: return "Space for suitcases and travel bags."
        case .longItemRack: return "Space for suitcases and travel bags."
            
        }
    }
    var usageDescription: String {
        switch self {
        case .vehicleParking: return "String Description"
        case .carCleaningSupplies: return "String Description"
        case .garageDoorArea: return "String Description"
        case .tireStorageCorner: return "Space to store tires."
        case .chargingStation: return "Space to charge vehicles."
        case .handToolStorage: return "String Description"
        case .powerToolStorage: return "String Description"
        case .workBench: return "String Description"
        case .toolCleaningMaintenance: return "String Description"
        case .smallPartsOrganizer: return "Small Parts Organizer"
        case .safetyEquipmentStation: return "Safety Equipment Station"
        case .gardenToolStorage: return "String Description"
        case .plantingSupplies: return "String Description"
        case .lawnEquipment: return "String Description"
        case .outdoorDecorationsFurniture: return "String Description"
        case .pottingBench: return "Potting Bench"
        case .hoseStorage: return "Hose Storage"
        case .ballStorage: return "String Description"
        case .bikeRack: return "String Description"
        case .sportsEquipmentRack: return "String Description"
        case .sportsGear: return "String Description"
        case .holidayDecorations: return "Place holiday decorations here."
        case .winterClothingGear: return "Place winter clothing gear here."
        case .seasonalToysOutdoorGear: return "Place seasonal toys here."
        case .outdoorFurnitureStorage: return "Place outdoor furniture here."
        case .overflowPantry: return "Place overflow pantries here."
        case .cleaningSupplies: return "Place cleaning supplies here."
        case .paperGoodsStorage: return "Place paper goods here."
        case .miscellaneousHouseholdItems: return "Place miscellaneous household items here."
        case .emergencySupplies: return "Place emergency supplies here."
        case .trashBinArea: return "Space for general trash bins."
        case .recyclingBinArea: return "Separate space for recyclables like plastics, paper, and glass."
        case .compostingArea: return "Space for composting bins, if applicable."
        case .hazardousWasteArea: return "Space for hazardous waste bins, if applicable."
        case .donationBinArea: return "Space for donation bins, if applicable."
        case .houseMaintenanceTools: return "House Maintenance Tools"
        case .cleaningMaintenanceProducts: return "Cleaning Maintenance Products"
        case .dIYRepairArea: return "DIY Repair Area"
        case .yardMaintenanceEquipmentZone: return "Yard Maintenance Equipment Zone"
        case .shoeBootStorage: return "Area for house maintenance tools like plumbing or electrical supplies.s"
        case .coatHatHooks: return "Storage for items like wood polish, filters, or air fresheners."
        case .laundrySupplies: return "Space for minor household repairs."
        case .clothingFoldingHangingArea: return "Space for storing clothing."
        case .petCare: return "Space for pet care items."
        case .seasonalItems: return "Dedicated shelves or cubbies for shoes and boots."
        case .extraLuggage: return "Wall hooks or racks for jackets, hats, and scarves."
        case .outdoorEquipment: return "Shelves for detergent, fabric softeners, and dryer sheets."
        case .longItemRack: return "ladders, kayaks, and other long items."
            
        }
    }
    var weight: Double { 5.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .carCleaningSupplies, .garageDoorArea, .vehicleParking, .tireStorageCorner, .chargingStation, .handToolStorage, .powerToolStorage, .toolCleaningMaintenance, .workBench, .smallPartsOrganizer, .safetyEquipmentStation, .gardenToolStorage, .lawnEquipment, .outdoorDecorationsFurniture, .plantingSupplies, .pottingBench, .hoseStorage, .ballStorage, .bikeRack, .sportsEquipmentRack, .sportsGear, .holidayDecorations, .seasonalToysOutdoorGear, .winterClothingGear, .outdoorFurnitureStorage, .cleaningSupplies, .miscellaneousHouseholdItems, .overflowPantry, .paperGoodsStorage, .emergencySupplies, .compostingArea, .recyclingBinArea, .trashBinArea, .donationBinArea, .hazardousWasteArea, .cleaningMaintenanceProducts, .houseMaintenanceTools, .dIYRepairArea, .yardMaintenanceEquipmentZone, .clothingFoldingHangingArea, .coatHatHooks, .laundrySupplies, .shoeBootStorage, .petCare, .extraLuggage, .outdoorEquipment, .seasonalItems, .longItemRack: return true
        }
    }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .carCleaningSupplies, .garageDoorArea, .vehicleParking, .tireStorageCorner, .chargingStation, .handToolStorage, .powerToolStorage, .toolCleaningMaintenance, .workBench, .smallPartsOrganizer, .safetyEquipmentStation, .gardenToolStorage, .lawnEquipment, .outdoorDecorationsFurniture, .plantingSupplies, .pottingBench, .hoseStorage, .ballStorage, .bikeRack, .sportsEquipmentRack, .sportsGear, .holidayDecorations, .seasonalToysOutdoorGear, .winterClothingGear, .outdoorFurnitureStorage, .cleaningSupplies, .miscellaneousHouseholdItems, .overflowPantry, .paperGoodsStorage, .emergencySupplies, .compostingArea, .recyclingBinArea, .trashBinArea, .donationBinArea, .hazardousWasteArea, .cleaningMaintenanceProducts, .houseMaintenanceTools, .dIYRepairArea, .yardMaintenanceEquipmentZone, .clothingFoldingHangingArea, .coatHatHooks, .laundrySupplies, .shoeBootStorage, .petCare, .extraLuggage, .outdoorEquipment, .seasonalItems, .longItemRack:
            return GarageSubTaskType.allCases.map { SubTaskTypeBox($0)! }
        }
    }
    static var parkingZoneSpaces: [GarageSpaceType] {
        return [.chargingStation, .vehicleParking, .garageDoorArea, .safetyEquipmentStation]
    }
    static var activityZoneSpaces: [GarageSpaceType] {
        return [.bikeRack, .ballStorage, .seasonalToysOutdoorGear, .sportsEquipmentRack, .sportsGear, .winterClothingGear]
    }
    static var outdoorZoneSpaces: [GarageSpaceType] {
        return [.gardenToolStorage, .hoseStorage, .lawnEquipment, .longItemRack, .outdoorDecorationsFurniture, .outdoorEquipment, .outdoorFurnitureStorage, .plantingSupplies, .pottingBench, .yardMaintenanceEquipmentZone]
    }
    static var allThingsWasteZoneSpaces: [GarageSpaceType] {
        return [.donationBinArea, .recyclingBinArea, .trashBinArea, .compostingArea, .hazardousWasteArea]
    }
    static var repairZoneSpaces: [GarageSpaceType] {
        return [.dIYRepairArea, .safetyEquipmentStation, .smallPartsOrganizer, .workBench, .houseMaintenanceTools]
    }
    static var cleaningZoneSpaces: [GarageSpaceType] {
        return [.cleaningSupplies, .carCleaningSupplies, .cleaningMaintenanceProducts, .toolCleaningMaintenance, .laundrySupplies]
    }
    static var toolZoneSpaces: [GarageSpaceType] {
        return [.handToolStorage, .houseMaintenanceTools, .powerToolStorage, .gardenToolStorage, .handToolStorage, .toolCleaningMaintenance, .workBench]
    }
    static var storageZoneSpaces: [GarageSpaceType] {
        return [.clothingFoldingHangingArea, .coatHatHooks, .emergencySupplies, .extraLuggage, .holidayDecorations, .laundrySupplies, .miscellaneousHouseholdItems, .overflowPantry, .petCare, .paperGoodsStorage, .seasonalItems, .shoeBootStorage, .tireStorageCorner]
    }
    static var SpaceType: [any SpaceType] {
        return GarageSpaceType.allCases.map { $0 as any SpaceType }
    }
}
