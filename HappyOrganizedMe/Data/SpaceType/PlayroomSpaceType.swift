//
//  PlayroomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

protocol PlayroomSpaceType: SpaceType, Codable, CaseIterable, Identifiable {
    var id: UUID { get }
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

// MARK: PlayroomSpaceType


enum PlayroomToyStorageZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case toyBins = "Toy Bins"
    case shelvingUnits = "Shelving Units"
    case toyChestTrunks = "Toy Chest Trunks"
    case rotationalStorage = "Rotational Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .toyBins: return "Use clear bins to categorize toys by type (e.g., cars, dolls, action figures) for easy identification and cleanup."
        case .shelvingUnits: return "Install low, accessible shelves to store frequently used toys, making them easily reachable for children."
        case .toyChestTrunks: return "Use a large storage chest or trunk for bulky toys like stuffed animals or large playsets, ensuring quick and easy cleanup."
        case .rotationalStorage: return "Set up a system to store and rotate toys to keep the space uncluttered and refresh interest in toys over time."
        }
    }
    var usageDescription: String {
        switch self {
        case .toyBins: return "Place toys in the bins."
        case .shelvingUnits: return "Place toys in the shelves."
        case .toyChestTrunks: return "Place toys in the chests."
        case .rotationalStorage: return "Place toys in the storage."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomToyStorageZoneSpaceType] {
        return PlayroomToyStorageZoneSpaceType.allCases
        }
}

enum PlayroomArtsCraftsSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case craftSuppliesDrawers = "Craft Supplies Drawers"
    case artTable = "Art Table"
    case craftDisplayBoard = "Craft Display Board"
    case supplyOrganizer = "Supply Organizer"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .craftSuppliesDrawers: return "Organize supplies like crayons, markers, glue, and paper into labeled drawers or containers, keeping similar items together."
        case .artTable: return "Provide a dedicated table for art projects with enough space for multiple children to work simultaneously. Choose a surface that is easy to clean."
        case .craftDisplayBoard: return "Use a corkboard, wire grid, or wall-mounted clips to display completed art projects and showcase creativity."
        case .supplyOrganizer: return "Supply Organizer: Use small bins, mason jars, or caddies to keep scissors, brushes, and small craft tools neatly organized."
        }
    }
    var usageDescription: String {
        switch self {
        case .craftSuppliesDrawers: return "Open the drawers and place the supplies inside."
        case .artTable: return "Place the art supplies on the table."
        case .craftDisplayBoard: return "Place the art supplies on the board."
        case .supplyOrganizer: return "Place the supplies on the organizer."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomArtsCraftsSpaceType] {
        return PlayroomArtsCraftsSpaceType.allCases
        }
}

enum PlayroomReadingZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case bookshelves = "Bookshelves"
    case cozySeatingAreas = "Cozy Seating Areas"
    case softLighting = "Soft Lighting"
    case quietTimeBasket = "Quiet Time Basket"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .bookshelves: return "Place books at eye level on low shelves for easy access. Organize them by category (e.g., picture books, chapter books) for better browsing."
        case .cozySeatingAreas: return "Include comfortable seating options such as bean bags, soft chairs, or floor cushions to create an inviting reading environment."
        case .softLighting: return "Provide soft, warm lighting with lamps or fairy lights to enhance the calming atmosphere in the reading nook."
        case .quietTimeBasket: return "Keep a basket of quiet activities (like coloring books, puzzles, or fidget toys) for use during reading time or quiet breaks."
        }
    }
    var usageDescription: String {
        switch self {
        case .bookshelves: return "Place bookshelves on the shelves."
        case .cozySeatingAreas: return "Place cozy seating areas on the shelves."
        case .softLighting: return "Place soft lighting on the shelves."
        case .quietTimeBasket: return "Place quiet time basket on the shelves."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomReadingZoneSpaceType] {
        return PlayroomReadingZoneSpaceType.allCases
        }
}

enum PlayroomBuildingConstructionZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case buildingBlockStorage = "Building Block Storage"
    case constructionTable = "Construction Table"
    case displayShelf = "Display Shelf"
    case challengeCards = "Challenge Cards"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .buildingBlockStorage: return "Store building blocks (e.g., wooden blocks, plastic blocks) in bins or drawers, organizing them by size or type for easy access."
        case .constructionTable: return "Provide a flat table or mat where children can build and construct without interfering with other activities."
        case .displayShelf: return "Dedicate a space to display completed construction projects, allowing children to show off their work before dismantling."
        case .challengeCards: return "Include building challenge cards or guides to inspire creativity and encourage new ideas for construction projects."
        }
    }
    var usageDescription: String {
        switch self {
        case .buildingBlockStorage: return "Place a Building Block Storage here."
        case .constructionTable: return "Place a Construction Table here."
        case .displayShelf: return "Place a Display Shelf here."
        case .challengeCards: return "Place a Challenge Cards here."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomBuildingConstructionZoneSpaceType] {
        return PlayroomBuildingConstructionZoneSpaceType.allCases
        }
}

enum PlayroomPretendPlayZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case dressUpArea = "Dress Up Area"
    case pretendPlaySets = "Pretend Play Sets"
    case rolePlayStation = "Role Play Station"
    case costumeMirror = "Costume Mirror"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .dressUpArea: return "Use hooks, a small wardrobe, or a chest to store dress-up clothes, costumes, and accessories, keeping them accessible for imaginative play."
        case .pretendPlaySets: return "Organize playsets like kitchen toys, dollhouses, or puppet theaters in labeled bins or baskets for easy identification and cleanup."
        case .rolePlayStation: return "Set up a dedicated area with props for role-playing games, such as a play kitchen, doctor’s office, or grocery store."
        case .costumeMirror: return "Include a small mirror on a table and a full length mirror near the dress-up area for children to see their costumes and enhance the role-playing experience."
        }
    }
    var usageDescription: String {
        switch self {
        case .dressUpArea: return "Place toys in the dress up area."
        case .pretendPlaySets: return "Place toys in the pretend play sets."
        case .rolePlayStation: return "Place toys in the role play station."
        case .costumeMirror: return "Place toys in the costume mirror."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomPretendPlayZoneSpaceType] {
        return PlayroomPretendPlayZoneSpaceType.allCases
        }
}

enum PlayroomPuzzleBoardGameSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case puzzleStorage = "Puzzle Storage"
    case gameShelf = "Game Shelf"
    case gameTable = "Game Table"
    case gamePieceOrganizer = "Game Piece Organizer"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .puzzleStorage: return "Store puzzles in clear, labeled containers to prevent pieces from getting lost. Stack boxes vertically or in bins for easy access."
        case .gameShelf: return "Use low shelves to store board games in an organized manner, grouping them by age or difficulty."
        case .gameTable: return "Provide a table with enough space for multiple players to sit and play, ensuring it’s located near the puzzle and game storage."
        case .gamePieceOrganizer: return "Use small bins or bags to organize and store loose game pieces, dice, or cards, ensuring they don’t get lost."
        }
    }
    var usageDescription: String {
        switch self {
        case .puzzleStorage: return "Place puzzles in the storage."
        case .gameShelf: return "Place games in the shelf."
        case .gameTable: return "Place games in the table."
        case .gamePieceOrganizer: return "Place game pieces in the organizer."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomPuzzleBoardGameSpaceType] {
        return PlayroomPuzzleBoardGameSpaceType.allCases
        }
}

enum PlayroomPhysicalActivityZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case softMatsRugs = "Soft Mats & Rugs"
    case sportsEquipmentRacks = "Sports Equipment Racks"
    case indoorPlayEquipment = "Indoor Play Equipment"
    case freePlayAreas = "Free Play Areas"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .softMatsRugs: return "Lay down soft mats or rugs for tumbling, stretching, or safe indoor physical play like yoga or dancing."
        case .sportsEquipmentRacks: return "Install hooks or a small rack to store items like jump ropes, balls, or hula hoops in an organized manner."
        case .indoorPlayEquipment: return "If space allows, set up small play equipment like a mini trampoline, balance beam, or tunnel for active play."
        case .freePlayAreas: return "Keep an open space for dancing, jumping, or engaging in movement-based activities without obstacles."
        }
    }
    var usageDescription: String {
        switch self {
        case .softMatsRugs: return "Place toys in the bins."
        case .sportsEquipmentRacks: return "Place toys in the shelves."
        case .indoorPlayEquipment: return "Place toys in the chests."
        case .freePlayAreas: return "Place toys in the storage."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomPhysicalActivityZoneSpaceType] {
        return PlayroomPhysicalActivityZoneSpaceType.allCases
        }
}

enum PlayroomMusicPerformanceSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case instrumentStorage = "Instrument Storage"
    case performanceArea = "Performance Area"
    case musicStand = "Music Stand"
    case recordingPlaybackZone = "Recording/Playback Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .instrumentStorage: return "Organize musical instruments like drums, keyboards, or guitars on shelves, racks, or stands to keep them easily accessible."
        case .performanceArea: return "Designate a small stage or play area where children can pretend to perform or practice their musical talents."
        case .musicStand: return "Provide a music stand for holding sheet music or music books for children learning to play an instrument."
        case .recordingPlaybackZone: return "Set up a small space for children to record or listen to their performances, enhancing the music experience."
        }
    }
    var usageDescription: String {
        switch self {
        case .instrumentStorage: return "Place toys in the bins."
        case .performanceArea: return "Place toys in the shelves."
        case .musicStand: return "Place toys in the chests."
        case .recordingPlaybackZone: return "Place toys in the storage."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomMusicPerformanceSpaceType] {
        return PlayroomMusicPerformanceSpaceType.allCases
        }
}

enum PlayroomSensoryPlaySpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case sensoryBins = "Sensory Bins"
    case tactileWallPanels = "Tactile Wall Panels"
    case lightTable = "Light Table"
    case waterPlayStation = "Water Play Station"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .sensoryBins: return "Use bins filled with different textures like sand, rice, water beads, or other sensory materials for exploration."
        case .tactileWallPanels: return "Install wall panels with various textures (e.g., soft, bumpy, smooth) to create a tactile sensory experience."
        case .lightTable: return "Include a light table or illuminated surface for playing with transparent objects, creating a visually stimulating sensory activity."
        case .waterPlayStation: return "Set up a water table or small indoor sandbox for sensory play with water, sand, or other materials."
        }
    }
    var usageDescription: String {
        switch self {
        case .sensoryBins: return "Place toys in the bins."
        case .tactileWallPanels: return "Place toys in the shelves."
        case .lightTable: return "Place toys in the chests."
        case .waterPlayStation: return "Place toys in the storage."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomSensoryPlaySpaceType] {
        return PlayroomSensoryPlaySpaceType.allCases
        }
}

enum PlayroomHomeworkStudyZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case deskChair = "Desk Chair"
    case suppliesStorage = "Supplies Storage"
    case homeworkOrganizer = "Homework Organizer"
    case referenceShelf = "Reference Shelf"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .deskChair: return "Provide a comfortable desk and chair suited for doing homework or studying. Make sure the desk is clutter-free and properly lit."
        case .suppliesStorage: return "Use drawers, caddies, or organizers to keep pens, pencils, paper, and other supplies neatly stored and easily accessible."
        case .homeworkOrganizer: return "Include a tray or folder system for sorting assignments, books, and schoolwork materials."
        case .referenceShelf: return "Set up a small shelf for reference books, dictionaries, or other educational materials for use during homework time."
        }
    }
    var usageDescription: String {
        switch self {
        case .deskChair: return "Place toys in the bins."
        case .suppliesStorage: return "Place toys in the shelves."
        case .homeworkOrganizer: return "Place toys in the chests."
        case .referenceShelf: return "Place toys in the storage."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomHomeworkStudyZoneSpaceType] {
        return PlayroomHomeworkStudyZoneSpaceType.allCases
        }
}

enum PlayroomTechnologyZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case deviceChargingStation = "Device Charging Station"
    case comfortableSeating = "Comfortable Seating"
    case headphoneStorage = "Headphone Storage"
    case screenTimeTimer = "Screen Time Timer"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .deviceChargingStation: return "Create a designated area for charging and storing tech devices like tablets, laptops, or gaming consoles."
        case .comfortableSeating: return "Arrange bean bags, chairs, or cushions to create a comfortable viewing or gaming space in front of screens."
        case .headphoneStorage: return "Use hooks or bins to store headphones or headsets for screen-based activities."
        case .screenTimeTimer: return "Include a system for managing screen time (e.g., timers or parental controls) to ensure balanced use of technology."
        }
    }
    var usageDescription: String {
        switch self {
        case .deviceChargingStation: return "Charge your devices."
        case .comfortableSeating: return "Relax and unwind."
        case .headphoneStorage: return "Store your headphones."
        case .screenTimeTimer: return "Set a screen time timer."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomTechnologyZoneSpaceType] {
        return PlayroomTechnologyZoneSpaceType.allCases
        }
}

enum PlayroomOutdoorPlayZoneSpaceType: String, PlayroomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case playEquipment = "Play Equipment"
    case outdoorToyStorage = "Outdoor Toy Storage"
    case waterPlayArea = "Water Play Area"
    case gardeningExplorationArea = "Gardening Exploration Area"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .playEquipment: return "Set up outdoor play structures like swings, slides, or climbing frames, ensuring the area is safe for active play."
        case .outdoorToyStorage: return "Use weatherproof bins or a shed to store outdoor toys like balls, bikes, or ride-on vehicles."
        case .waterPlayArea: return "Designate a space for water activities like a small pool, splash pad, or water table for outdoor fun."
        case .gardeningExplorationArea: return "Create a garden or nature exploration zone where children can plant seeds, dig, and observe nature."
        }
    }
    var usageDescription: String {
        switch self {
        case .playEquipment: return "Place toys in the bins."
        case .outdoorToyStorage: return "Place toys in the shelves."
        case .waterPlayArea: return "Place toys in the chests."
        case .gardeningExplorationArea: return "Place toys in the storage."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [PlayroomOutdoorPlayZoneSpaceType] {
        return PlayroomOutdoorPlayZoneSpaceType.allCases
        }
}

extension PlayroomSpaceType {
    static var allPlayroomSpaceTypes: [any PlayroomSpaceType] {
        return [
            PlayroomToyStorageZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomArtsCraftsSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomReadingZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomBuildingConstructionZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomPretendPlayZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomPuzzleBoardGameSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomPhysicalActivityZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomMusicPerformanceSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomSensoryPlaySpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomHomeworkStudyZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomTechnologyZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType},
            PlayroomOutdoorPlayZoneSpaceType.allCases.map { $0 as any PlayroomSpaceType}
        ].flatMap { $0 }
    }
}
