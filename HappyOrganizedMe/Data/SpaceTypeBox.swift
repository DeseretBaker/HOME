//
//  SpaceTypeBox.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/18/24.
//
import Foundation

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
            switch spaceType.name {
            case "Bathroom Bathing/Showering":
                self = .bathroomBathingShoweringSpaceType
            case "Bedroom Bed":
                self = .bedroomBedSpaceType
            default:
                if let unknown = spaceType as? UnknownSpaceType {
                    self = .unknown(unknown)
                } else {
                    return nil
                }
            }
        }
    }
    
    // UnknownSpaceType enum conforming to SpaceType protocol
enum UnknownSpaceType: String, SpaceType, CaseIterable {
    
    
        case unknown
    
        var id: UUID { UUID() }
        var name: String { self.rawValue }
        var imageName: String { "image_\(self.rawValue)" }
        var instructions: String { "Instructions for \(self.rawValue)" }
        var usageDescription: String { "Usage of \(self.rawValue)" }
        var type: String { self.rawValue }
        var category: String { "Category for \(self.rawValue)" }
        var weight: Double { 0.0 }

    
}

// Codable Conformance
extension SpaceTypeBox {
    enum CodingKeys: CodingKey {
        case type, value
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .bathroomBathingShoweringSpaceType:
            try container.encode("bathroomBathingShoweringSpaceType", forKey: .type)
        case .bathroomToiletZoneSpaceType:
            try container.encode("bathroomToiletZoneSpaceType", forKey: .type)
        case .bathroomVanitySinkZoneSpaceType:
            try container.encode("bathroomVanitySinkZoneSpaceType", forKey: .type)
        case .bathroomTowelsToiletriesZoneSpaceType:
            try container.encode("bathroomTowelsToiletriesZoneSpaceType", forKey: .type)
        case .bathroomGroomingSpaceType:
            try container.encode("bathroomGroomingSpaceType", forKey: .type)
        case .bathroomLaundrySpaceType:
            try container.encode("bathroomLaundrySpaceType", forKey: .type)
        case .bathroomDressingChangingSpaceType:
            try container.encode("bathroomDressingChangingSpaceType", forKey: .type)
        case .bathroomCleaningSuppliesSpaceType:
            try container.encode("bathroomCleaningSuppliesSpaceType", forKey: .type)
        case .bathroomRelaxationSpaceType:
            try container.encode("bathroomRelaxationSpaceType", forKey: .type)
        case .bedroomBedSpaceType:
            try container.encode("bedroomBedSpaceType", forKey: .type)
        case .bedroomDresserSpaceType:
            try container.encode("bedroomDresserSpaceType", forKey: .type)
        case .bedroomNightstandSpaceType:
            try container.encode("bedroomNightstandSpaceType", forKey: .type)
        case .bedroomStorageZoneSpaceType:
            try container.encode("bedroomStorageZoneSpaceType", forKey: .type)
        case .officeWorkStationSpaceType:
            try container.encode("officeWorkStationSpaceType", forKey: .type)
        case .officeDeskStorageSpaceType:
            try container.encode("officeDeskStorageSpaceType", forKey: .type)
        case .officeTechGadgetZoneSpaceType:
            try container.encode("officeTechGadgetZoneSpaceType", forKey: .type)
        case .officeReferenceZoneSpaceType:
            try container.encode("officeReferenceZoneSpaceType", forKey: .type)
        case .kitchenPrepZoneSpaceType:
            try container.encode("kitchenPrepZoneSpaceType", forKey: .type)
        case .kitchenCookingZoneSpaceType:
            try container.encode("kitchenCookingZoneSpaceType", forKey: .type)
        case .kitchenCleaningZoneSpaceType:
            try container.encode("kitchenCleaningZoneSpaceType", forKey: .type)
        case .kitchenFoodStorageZoneSpaceType:
            try container.encode("kitchenFoodStorageZoneSpaceType", forKey: .type)
        case .kitchenCookwareZoneSpaceType:
            try container.encode("kitchenCookwareZoneSpaceType", forKey: .type)
        case .kitchenServingZoneSpaceType:
            try container.encode("kitchenServingZoneSpaceType", forKey: .type)
        case .kitchenBakingZoneSpaceType:
            try container.encode("kitchenBakingZoneSpaceType", forKey: .type)
        case .kitchenDrinkZoneSpaceType:
            try container.encode("kitchenDrinkZoneSpaceType", forKey: .type)
        case .diningRoomDiningZoneSpaceType:
            try container.encode("diningRoomDiningZoneSpaceType", forKey: .type)
        case .diningRoomServingZoneSpaceType:
            try container.encode("diningRoomServingZoneSpaceType", forKey: .type)
        case .diningRoomStorageZoneSpaceType:
            try container.encode("diningRoomStorageZoneSpaceType", forKey: .type)
        case .diningRoomDecorDisplayZoneSpaceType:
            try container.encode("diningRoomDecorDisplayZoneSpaceType", forKey: .type)
        case .diningRoomLightingZoneSpaceType:
            try container.encode("diningRoomLightingZoneSpaceType", forKey: .type)
        case .diningRoomMultiUseZoneSpaceType:
            try container.encode("diningRoomMultiUseZoneSpaceType", forKey: .type)
        case .diningRoomDrinkingBarZoneSpaceType:
            try container.encode("diningRoomDrinkingBarZoneSpaceType", forKey: .type)
        case .playroomToyStorageZoneSpaceType:
            try container.encode("playroomToyStorageZoneSpaceType", forKey: .type)
        case .playroomArtsCraftsSpaceType:
            try container.encode("playroomArtsCraftsSpaceType", forKey: .type)
        case .playroomReadingZoneSpaceType:
            try container.encode("playroomReadingZoneSpaceType", forKey: .type)
        case .playroomBuildingConstructionZoneSpaceType:
            try container.encode("playroomBuildingConstructionZoneSpaceType", forKey: .type)
        case .playroomPretendPlayZoneSpaceType:
            try container.encode("playroomPretendPlayZoneSpaceType", forKey: .type)
        case .playroomPuzzleBoardGameSpaceType:
            try container.encode("playroomPuzzleBoardGameSpaceType", forKey: .type)
        case .playroomPhysicalActivityZoneSpaceType:
            try container.encode("playroomPhysicalActivityZoneSpaceType", forKey: .type)
        case .playroomMusicPerformanceSpaceType:
            try container.encode("playroomMusicPerformanceSpaceType", forKey: .type)
        case .playroomSensoryPlaySpaceType:
            try container.encode("playroomSensoryPlaySpaceType", forKey: .type)
        case .playroomHomeworkStudyZoneSpaceType:
            try container.encode("playroomHomeworkStudyZoneSpaceType", forKey: .type)
        case .playroomTechnologyZoneSpaceType:
            try container.encode("playroomTechnologyZoneSpaceType", forKey: .type)
        case .playroomOutdoorPlayZoneSpaceType:
            try container.encode("playroomOutdoorPlayZoneSpaceType", forKey: .type)
        case .garageParkingSpaceType:
            try container.encode("garageParkingSpaceType", forKey: .type)
        case .garageToolZoneSpaceType:
            try container.encode("garageToolZoneSpaceType", forKey: .type)
        case .garageGardenOutdoorZoneSpaceType:
            try container.encode("garageGardenOutdoorZoneSpaceType", forKey: .type)
        case .garageSportsActivityGearZoneSpaceType:
            try container.encode("garageSportsActivityGearZoneSpaceType", forKey: .type)
        case .garageSeasonalStorageZoneSpaceType:
            try container.encode("garageSeasonalStorageZoneSpaceType", forKey: .type)
        case .garageHouseHoldStorageZoneSpaceType:
            try container.encode("garageHouseHoldStorageZoneSpaceType", forKey: .type)
        case .garageWasteRecyclingZoneSpaceType:
            try container.encode("garageWasteRecyclingZoneSpaceType", forKey: .type)
        case .garageMaintenanceZoneSpaceType:
            try container.encode("garageMaintenanceZoneSpaceType", forKey: .type)
        case .garageMudroomLaundrySpaceType:
            try container.encode("garageMudroomLaundrySpaceType", forKey: .type)
        case .garageOverheadStorageZone:
            try container.encode("garageOverheadStorageZone", forKey: .type)
        case .storageClosetZoneSpaceType:
            try container.encode("storageClosetZoneSpaceType", forKey: .type)
        case .storageUtilityRoomSpaceType:
            try container.encode("storageUtilityRoomSpaceType", forKey: .type)
        case .storageAtticBasementSpaceType:
            try container.encode("storageAtticBasementSpaceType", forKey: .type)
        case .storagePantrySpaceType:
            try container.encode("storagePantrySpaceType", forKey: .type)
        case .storageLaundryRoomSpaceType:
            try container.encode("storageLaundryRoomSpaceType", forKey: .type)
        case .storageMudroomEntrySpaceType:
            try container.encode("storageMudroomEntrySpaceType", forKey: .type)
        case .storageCabinetShelvingSpaceType:
            try container.encode("storageCabinetShelvingSpaceType", forKey: .type)
        case .storageUnderBedStorageSpaceType:
            try container.encode("storageUnderBedStorageSpaceType", forKey: .type)
        case .storageBuiltInsWallUnitsSpaceType:
            try container.encode("storageBuiltInsWallUnitsSpaceType", forKey: .type)
        case .storageHomeOfficeSpaceType:
            try container.encode("storageHomeOfficeSpaceType", forKey: .type)
        case .unknown(let unknownType):
            try container.encode(unknownType, forKey: .value)
        case .livingRoomSeatingZoneSpaceType:
            try container.encode("livingRoomSeatingZoneSpaceType", forKey: .type)
        case .livingRoomEntertainmentZoneSpaceType:
            try container.encode("livingRoomEntertainmentZoneSpaceType", forKey: .type)
        case .livingRoomReadingRelaxationZoneSpaceType:
            try container.encode("livingRoomReadingRelaxationZoneSpaceType", forKey: .type)
        case .livingRoomStorageZoneSpaceType:
            try container.encode("livingRoomStorageZoneSpaceType", forKey: .type)
        case .livingRoomDecorativeZoneSpaceType:
            try container.encode("livingRoomDecorativeZoneSpaceType", forKey: .type)
        case .livingRoomPlayZoneSpaceType:
            try container.encode("livingRoomPlayZoneSpaceType", forKey: .type)
        case .livingRoomConversationZoneSpaceType:
            try container.encode("livingRoomConversationZoneSpaceType", forKey: .type)
        case .livingRoomLightingZoneSpaceType:
            try container.encode("livingRoomLightingZoneSpaceType", forKey: .type)
        }
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "unknown":
            let unknownType = try container.decode(UnknownSpaceType.self, forKey: .value)
            self = .unknown(unknownType)
        case "bathroomBathingShoweringSpaceType":
            self = .bathroomBathingShoweringSpaceType
        case "bedroomBedSpaceType":
            self = .bedroomBedSpaceType
        // Continue for other cases
        default:
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Invalid type")
        }
    }
}
