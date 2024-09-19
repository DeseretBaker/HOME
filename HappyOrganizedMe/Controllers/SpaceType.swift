//
//  SpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation
import SwiftUI

// Protocol definition
protocol SpaceType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var type: String { get }
    var category: String { get }
}

enum SpaceTypeBox: Codable {
    case unknown(UnknownSpaceType)
    case bathroomBathingShoweringSpaceType
    case bathroomToiletZoneSpaceType
    case bathroomVanitySinkZoneSpaceType
    case bathroomTowelsToiletriesZoneSpaceType
    case bathroomGroomingSpaceType
    case bathroomLaundrySpaceType
    case bathroomDressingChangingSpaceType
    case bathroomCleaningSuppliesSpaceType
    case bathroomRelaxationSpaceType
    case bedroomBedSpaceType
    case bedroomDresserSpaceType
    case bedroomNightstandSpaceType
    case bedroomStorageZoneSpaceType
    case diningRoomDiningZoneSpaceType
    case diningRoomServingZoneSpaceType
    case diningRoomStorageZoneSpaceType
    case diningRoomDecorDisplayZoneSpaceType
    case diningRoomLightingZoneSpaceType
    case diningRoomMultiUseZoneSpaceType
    case diningRoomDrinkingBarZoneSpaceType
    case garageParkingSpaceType
    case garageToolZoneSpaceType
    case garageGardenOutdoorZoneSpaceType
    case garageSportsActivityGearZoneSpaceType
    case garageSeasonalStorageZoneSpaceType
    case garageHouseHoldStorageZoneSpaceType
    case garageWasteRecyclingZoneSpaceType
    case garageMaintenanceZoneSpaceType
    case garageMudroomLaundrySpaceType
    case garageOverheadStorageZone
    case kitchenPrepZoneSpaceType
    case kitchenCookingZoneSpaceType
    case kitchenCleaningZoneSpaceType
    case kitchenFoodStorageZoneSpaceType
    case kitchenCookwareZoneSpaceType
    case kitchenServingZoneSpaceType
    case kitchenBakingZoneSpaceType
    case kitchenDrinkZoneSpaceType
    case livingRoomSeatingZoneSpaceType
    case livingRoomEntertainmentZoneSpaceType
    case livingRoomReadingRelaxationZoneSpaceType
    case livingRoomStorageZoneSpaceType
    case livingRoomDecorativeZoneSpaceType
    case livingRoomPlayZoneSpaceType
    case livingRoomConversationZoneSpaceType
    case livingRoomLightingZoneSpaceType
    case officeWorkStationSpaceType
    case officeDeskStorageSpaceType
    case officeTechGadgetZoneSpaceType
    case officeReferenceZoneSpaceType
    case playroomToyStorageZoneSpaceType
    case playroomArtsCraftsSpaceType
    case playroomReadingZoneSpaceType
    case playroomBuildingConstructionZoneSpaceType
    case playroomPretendPlayZoneSpaceType
    case playroomPuzzleBoardGameSpaceType
    case playroomPhysicalActivityZoneSpaceType
    case playroomMusicPerformanceSpaceType
    case playroomSensoryPlaySpaceType
    case playroomHomeworkStudyZoneSpaceType
    case playroomTechnologyZoneSpaceType
    case playroomOutdoorPlayZoneSpaceType
    case storageClosetZoneSpaceType
    case storageUtilityRoomSpaceType
    case storageAtticBasementSpaceType
    case storagePantrySpaceType
    case storageLaundryRoomSpaceType
    case storageMudroomEntrySpaceType
    case storageCabinetShelvingSpaceType
    case storageUnderBedStorageSpaceType
    case storageBuiltInsWallUnitsSpaceType
    case storageHomeOfficeSpaceType
    
    var name: String {
        switch self {
        case .unknown(let unknown):
            return unknown.name
        case .bathroomBathingShoweringSpaceType:
            return "Bathroom Bathing/Showering"
        case .bathroomToiletZoneSpaceType:
            return "Bathroom Toilet"
        case .bathroomVanitySinkZoneSpaceType:
            return "Bathroom Vanity Sink"
        case .bathroomTowelsToiletriesZoneSpaceType:
            return "Bathroom Towels/Toiletries"
        case .bathroomGroomingSpaceType:
            return "Bathroom Grooming"
        case .bathroomLaundrySpaceType:
            return "Bathroom Laundry"
        case .bathroomDressingChangingSpaceType:
            return "Bathroom Dressing Changing"
        case .bathroomCleaningSuppliesSpaceType:
            return "Bathroom Cleaning Supplies"
        case .bathroomRelaxationSpaceType:
            return "Bathroom Relaxation"
        case .bedroomBedSpaceType:
            return "Bedroom Bed"
        case .bedroomDresserSpaceType:
            return "Bedroom Dresser"
        case .bedroomNightstandSpaceType:
            return "Bedroom Nightstand"
        case .bedroomStorageZoneSpaceType:
            return "Bedroom Storage"
        case .diningRoomDiningZoneSpaceType:
            return "Dining Room Dining"
        case .diningRoomServingZoneSpaceType:
            return "Dining Room Serving"
        case .diningRoomStorageZoneSpaceType:
            return "Dining Room Storage"
        case .diningRoomDecorDisplayZoneSpaceType:
            return "Dining Room Decor/Display"
        case .diningRoomLightingZoneSpaceType:
            return "Dining Room Lighting"
        case .diningRoomMultiUseZoneSpaceType:
            return "Dining Room Multi-Use"
        case .diningRoomDrinkingBarZoneSpaceType:
            return "Dining Room Drinking Bar"
        case .garageParkingSpaceType:
            return "Garage Parking"
        case .garageToolZoneSpaceType:
            return "Garage Tool"
        case .garageGardenOutdoorZoneSpaceType:
            return "Garage Garden/Outdoor"
        case .garageSportsActivityGearZoneSpaceType:
            return "Garage Sports Activity Gear"
        case .garageSeasonalStorageZoneSpaceType:
            return "Garage Seasonal Storage"
        case .garageHouseHoldStorageZoneSpaceType:
            return "Garage Household Storage"
        case .garageWasteRecyclingZoneSpaceType:
            return "Garage Waste Recycling"
        case .garageMaintenanceZoneSpaceType:
            return "Garage Maintenance"
        case .garageMudroomLaundrySpaceType:
            return "Garage Mudroom/Laundry"
        case .garageOverheadStorageZone:
            return "Garage Overhead Storage"
        case .kitchenPrepZoneSpaceType:
            return "Kitchen Prep"
        case .kitchenCookingZoneSpaceType:
            return "Kitchen Cooking"
        case .kitchenCleaningZoneSpaceType:
            return "Kitchen Cleaning"
        case .kitchenFoodStorageZoneSpaceType:
            return "Kitchen Food Storage"
        case .kitchenCookwareZoneSpaceType:
            return "Kitchen Cookware"
        case .kitchenServingZoneSpaceType:
            return "Kitchen Serving"
        case .kitchenBakingZoneSpaceType:
            return "Kitchen Baking"
        case .kitchenDrinkZoneSpaceType:
            return "Kitchen Drink"
        case .livingRoomSeatingZoneSpaceType:
            return "Living Room Seating"
        case .livingRoomEntertainmentZoneSpaceType:
            return "Living Room Entertainment"
        case .livingRoomReadingRelaxationZoneSpaceType:
            return "Living Room Reading/Relaxation"
        case .livingRoomStorageZoneSpaceType:
            return "Living Room Storage"
        case .livingRoomDecorativeZoneSpaceType:
            return "Living Room Decorative"
        case .livingRoomPlayZoneSpaceType:
            return "Living Room Play"
        case .livingRoomConversationZoneSpaceType:
            return "Living Room Conversation"
        case .livingRoomLightingZoneSpaceType:
            return "Living Room Lighting"
        case .officeWorkStationSpaceType:
            return "Office Work Station"
        case .officeDeskStorageSpaceType:
            return "Office Desk Storage"
        case .officeTechGadgetZoneSpaceType:
            return "Office Tech Gadget"
        case .officeReferenceZoneSpaceType:
            return "Office Reference"
        case .playroomToyStorageZoneSpaceType:
            return "Playroom Toy Storage"
        case .playroomArtsCraftsSpaceType:
            return "Playroom Arts Crafts"
        case .playroomReadingZoneSpaceType:
            return "Playroom Reading"
        case .playroomBuildingConstructionZoneSpaceType:
            return "Playroom Building Construction"
        case .playroomPretendPlayZoneSpaceType:
            return "Playroom Pretend Play"
        case .playroomPuzzleBoardGameSpaceType:
            return "Playroom Puzzle Board Game"
        case .playroomPhysicalActivityZoneSpaceType:
            return "Playroom Physical Activity"
        case .playroomMusicPerformanceSpaceType:
            return "Playroom Music Performance"
        case .playroomSensoryPlaySpaceType:
            return "Playroom Sensory Play"
        case .playroomHomeworkStudyZoneSpaceType:
            return "Playroom Homework Study"
        case .playroomTechnologyZoneSpaceType:
            return "Playroom Technology"
        case .playroomOutdoorPlayZoneSpaceType:
            return "Playroom Outdoor Play"
        case .storageClosetZoneSpaceType:
            return "Storage Closet"
        case .storageUtilityRoomSpaceType:
            return "Storage Utility Room"
        case .storageAtticBasementSpaceType:
            return "Storage Attic/Basement"
        case .storagePantrySpaceType:
            return "Storage Pantry"
        case .storageLaundryRoomSpaceType:
            return "Storage Laundry Room"
        case .storageMudroomEntrySpaceType:
            return "Storage Mudroom Entry"
        case .storageCabinetShelvingSpaceType:
            return "Storage Cabinet/Shelving"
        case .storageUnderBedStorageSpaceType:
            return "Storage Under Bed Storage"
        case .storageBuiltInsWallUnitsSpaceType:
            return "Storage Built-Ins/Wall Units"
        case .storageHomeOfficeSpaceType:
            return "Storage Home Office"
        }
    }
    var imageName: String {
        switch self {
        case .unknown(let unknown):
            return unknown.imageName
        case .bathroomBathingShoweringSpaceType:
            return "BathingShowering"
        case .bathroomToiletZoneSpaceType:
            return "Toilet"
        case .bathroomVanitySinkZoneSpaceType:
            return "VanitySink"
        case .bathroomTowelsToiletriesZoneSpaceType:
            return "TowelsToiletries"
        case .bathroomGroomingSpaceType:
            return "Grooming"
        case .bathroomLaundrySpaceType:
            return "Laundry"
        case .bathroomDressingChangingSpaceType:
            return "DressingChanging"
        case .bathroomCleaningSuppliesSpaceType:
            return "CleaningSupplies"
        case .bathroomRelaxationSpaceType:
            return "Relaxation"
        case .bedroomBedSpaceType:
            return "Bed"
        case .bedroomDresserSpaceType:
            return "Dresser"
        case .bedroomNightstandSpaceType:
            return "Nightstand"
        case .bedroomStorageZoneSpaceType:
            return "StorageZone"
        case .diningRoomDiningZoneSpaceType:
            return "DiningZone"
        case .diningRoomServingZoneSpaceType:
            return "ServingZone"
        case .diningRoomStorageZoneSpaceType:
            return "StorageZone"
        case .diningRoomDecorDisplayZoneSpaceType:
            return "DecorDisplayZone"
        case .diningRoomLightingZoneSpaceType:
            return "LightingZone"
        case .diningRoomMultiUseZoneSpaceType:
            return "MultiUseZone"
        case .diningRoomDrinkingBarZoneSpaceType:
            return "DrinkingBarZone"
        case .garageParkingSpaceType:
            return "Parking"
        case .garageToolZoneSpaceType:
            return "ToolZone"
        case .garageGardenOutdoorZoneSpaceType:
            return "GardenOutdoorZone"
        case .garageSportsActivityGearZoneSpaceType:
            return "SportsActivityGearZone"
        case .garageSeasonalStorageZoneSpaceType:
            return "SeasonalStorageZone"
        case .garageHouseHoldStorageZoneSpaceType:
            return "HouseHoldStorageZone"
        case .garageWasteRecyclingZoneSpaceType:
            return "WasteRecyclingZone"
        case .garageMaintenanceZoneSpaceType:
            return "MaintenanceZone"
        case .garageMudroomLaundrySpaceType:
            return "MudroomLaundry"
        case .garageOverheadStorageZone:
            return "OverheadStorageZone"
        case .kitchenPrepZoneSpaceType:
            return "PrepZone"
        case .kitchenCookingZoneSpaceType:
            return "CookingZone"
        case .kitchenCleaningZoneSpaceType:
            return "CleaningZone"
        case .kitchenFoodStorageZoneSpaceType:
            return "FoodStorageZone"
        case .kitchenCookwareZoneSpaceType:
            return "CookwareZone"
        case .kitchenServingZoneSpaceType:
            return "ServingZone"
        case .kitchenBakingZoneSpaceType:
            return "BakingZone"
        case .kitchenDrinkZoneSpaceType:
            return "DrinkZone"
        case .livingRoomSeatingZoneSpaceType:
            return "SeatingZone"
        case .livingRoomEntertainmentZoneSpaceType:
            return "EntertainmentZone"
        case .livingRoomReadingRelaxationZoneSpaceType:
            return "ReadingRelaxationZone"
        case .livingRoomStorageZoneSpaceType:
            return "StorageZone"
        case .livingRoomDecorativeZoneSpaceType:
            return "DecorativeZone"
        case .livingRoomPlayZoneSpaceType:
            return "PlayZone"
        case .livingRoomConversationZoneSpaceType:
            return "ConversationZone"
        case .livingRoomLightingZoneSpaceType:
            return "LightingZone"
        case .officeWorkStationSpaceType:
            return "WorkStationZone"
        case .officeDeskStorageSpaceType:
            return "DeskStorageZone"
        case .officeTechGadgetZoneSpaceType:
            return "TechGadgetZone"
        case .officeReferenceZoneSpaceType:
            return "ReferenceZone"
        case .playroomToyStorageZoneSpaceType:
            return "ToyStorageZone"
        case .playroomArtsCraftsSpaceType:
            return "ArtsCraftsZone"
        case .playroomReadingZoneSpaceType:
            return "ReadingZone"
        case .playroomBuildingConstructionZoneSpaceType:
            return "BuildingConstructionZone"
        case .playroomPretendPlayZoneSpaceType:
            return "PretendPlayZone"
        case .playroomPuzzleBoardGameSpaceType:
            return "PuzzleBoardGameZone"
        case .playroomPhysicalActivityZoneSpaceType:
            return "PhysicalActivityZone"
        case .playroomMusicPerformanceSpaceType:
            return "MusicPerformanceZone"
        case .playroomSensoryPlaySpaceType:
            return "SensoryPlayZone"
        case .playroomHomeworkStudyZoneSpaceType:
            return "HomeworkStudyZone"
        case .playroomTechnologyZoneSpaceType:
            return "TechnologyZone"
        case .playroomOutdoorPlayZoneSpaceType:
            return "OutdoorPlayZone"
        case .storageClosetZoneSpaceType:
            return "ClosetZone"
        case .storageUtilityRoomSpaceType:
            return "Utility Room Storage"
        case .storageAtticBasementSpaceType:
            return "Attic Basement Storage"
        case .storagePantrySpaceType:
            return "Pantry Storage"
        case .storageLaundryRoomSpaceType:
            return "Laundry Room Storage"
        case .storageMudroomEntrySpaceType:
            return "Mudroom Entry Storage"
        case .storageCabinetShelvingSpaceType:
            return "Cabinet Shelving Storage"
        case .storageUnderBedStorageSpaceType:
            return "Under Bed Storage"
        case .storageBuiltInsWallUnitsSpaceType:
            return "Built-Ins Wall Units Storage"
        case .storageHomeOfficeSpaceType:
            return "Home Office Storage"
        }
    }
    
    var weight: Double {
        switch self {
        case .unknown(let unknown):
            return unknown.weight
        case .bathroomBathingShoweringSpaceType:
            return 2.0
        case .bathroomToiletZoneSpaceType:
            return 2.0
        case .bathroomVanitySinkZoneSpaceType:
            return 2.0
        case .bathroomTowelsToiletriesZoneSpaceType:
            return 2.0
        case .bathroomGroomingSpaceType:
            return 2.0
        case .bathroomLaundrySpaceType:
            return 2.0
        case .bathroomDressingChangingSpaceType:
            return 2.0
        case .bathroomCleaningSuppliesSpaceType:
            return 2.0
        case .bathroomRelaxationSpaceType:
            return 2.0
        case .bedroomBedSpaceType:
            return 2.0
        case .bedroomDresserSpaceType:
            return 2.0
        case .bedroomNightstandSpaceType:
            return 2.0
        case .bedroomStorageZoneSpaceType:
            return 2.0
        case .diningRoomDiningZoneSpaceType:
            return 3.0
        case .diningRoomServingZoneSpaceType:
            return 3.0
        case .diningRoomStorageZoneSpaceType:
            return 3.0
        case .diningRoomDecorDisplayZoneSpaceType:
            return 3.0
        case .diningRoomLightingZoneSpaceType:
            return 3.0
        case .diningRoomMultiUseZoneSpaceType:
            return 3.0
        case .diningRoomDrinkingBarZoneSpaceType:
            return 3.0
        case .garageParkingSpaceType:
            return 5.0
        case .garageToolZoneSpaceType:
            return 5.0
        case .garageGardenOutdoorZoneSpaceType:
            return 5.0
        case .garageSportsActivityGearZoneSpaceType:
            return 5.0
        case .garageSeasonalStorageZoneSpaceType:
            return 5.0
        case .garageHouseHoldStorageZoneSpaceType:
            return 5.0
        case .garageWasteRecyclingZoneSpaceType:
            return 5.0
        case .garageMaintenanceZoneSpaceType:
            return 5.0
        case .garageMudroomLaundrySpaceType:
            return 5.0
        case .garageOverheadStorageZone:
            return 5.0
        case .kitchenPrepZoneSpaceType:
            return 4.0
        case .kitchenCookingZoneSpaceType:
            return 4.0
        case .kitchenCleaningZoneSpaceType:
            return 4.0
        case .kitchenFoodStorageZoneSpaceType:
            return 4.0
        case .kitchenCookwareZoneSpaceType:
            return 4.0
        case .kitchenServingZoneSpaceType:
            return 4.0
        case .kitchenBakingZoneSpaceType:
            return 4.0
        case .kitchenDrinkZoneSpaceType:
            return 4.0
        case .livingRoomSeatingZoneSpaceType:
            return 3.0
        case .livingRoomEntertainmentZoneSpaceType:
            return 3.0
        case .livingRoomReadingRelaxationZoneSpaceType:
            return 3.0
        case .livingRoomStorageZoneSpaceType:
            return 3.0
        case .livingRoomDecorativeZoneSpaceType:
            return 3.0
        case .livingRoomPlayZoneSpaceType:
            return 3.0
        case .livingRoomConversationZoneSpaceType:
            return 3.0
        case .livingRoomLightingZoneSpaceType:
            return 3.0
        case .officeWorkStationSpaceType:
            return 3.0
        case .officeDeskStorageSpaceType:
            return 3.0
        case .officeTechGadgetZoneSpaceType:
            return 3.0
        case .officeReferenceZoneSpaceType:
            return 3.0
        case .playroomToyStorageZoneSpaceType:
            return 2.0
        case .playroomArtsCraftsSpaceType:
            return 2.0
        case .playroomReadingZoneSpaceType:
            return 2.0
        case .playroomBuildingConstructionZoneSpaceType:
            return 2.0
        case .playroomPretendPlayZoneSpaceType:
            return 2.0
        case .playroomPuzzleBoardGameSpaceType:
            return 2.0
        case .playroomPhysicalActivityZoneSpaceType:
            return 2.0
        case .playroomMusicPerformanceSpaceType:
            return 2.0
        case .playroomSensoryPlaySpaceType:
            return 2.0
        case .playroomHomeworkStudyZoneSpaceType:
            return 2.0
        case .playroomTechnologyZoneSpaceType:
            return 2.0
        case .playroomOutdoorPlayZoneSpaceType:
            return 2.0
        case .storageClosetZoneSpaceType:
            return 2.0
        case .storageUtilityRoomSpaceType:
            return 2.0
        case .storageAtticBasementSpaceType:
            return 2.0
        case .storagePantrySpaceType:
            return 2.0
        case .storageLaundryRoomSpaceType:
            return 2.0
        case .storageMudroomEntrySpaceType:
            return 2.0
        case .storageCabinetShelvingSpaceType:
            return 2.0
        case .storageUnderBedStorageSpaceType:
            return 2.0
        case .storageBuiltInsWallUnitsSpaceType:
            return 2.0
        case .storageHomeOfficeSpaceType:
            return 2.0
        }
    }
    
    init?(spaceType: any SpaceType) {
        if let type = spaceType as? UnknownSpaceType {
            self = .unknown(type)
        }
        
        return nil
    }
}

// UnknownSpaceType enum conforming to SpaceType protocol
enum UnknownSpaceType: String, SpaceType, CaseIterable {
    case type1
    case type2
    
    var id: UUID { UUID() }
    var name: String { self.rawValue }
    var imageName: String { "image_\(self.rawValue)" }
    var instructions: String { "Instructions for \(self.rawValue)" }
    var usageDescription: String { "Usage of \(self.rawValue)" }
    var type: String { self.rawValue }
    var category: String { "Category for \(self.rawValue)" }
}

// Extend SpaceType to collect all SpaceTypes
extension SpaceType {
    static var allSpaceTypes: [any SpaceType] {
        var spaceTypes: [any SpaceType] = []
        
        // Assuming UnknownSpaceType conforms to SpaceType and is CaseIterable
        spaceTypes.append(contentsOf: UnknownSpaceType.allCases.map { $0 as (any SpaceType) })
        
        return spaceTypes
    }
}
