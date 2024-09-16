//
//  StorageSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

protocol StorageSpaceType: SpaceType, Codable, CaseIterable, Identifiable {
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

// MARK: StorageSpaceZone

enum StorageClosetZoneSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    
    case hangingSpace = "Hanging Space"
    case shelves = "Shelves"
    case shoeRack = "Shoe Rack"
    case overheadStorage = "Overhead Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .hangingSpace: return "Use hanging rods for clothing, organized by type (e.g., shirts, dresses, pants). Maximize space with double rods or specialized hangers."
        case .shelves: return "Store folded clothes, shoes, or bins on closet shelves. Use dividers or baskets to keep items neatly arranged."
        case .shoeRack: return "Install a shoe rack or tiered shelves to keep shoes organized and easily accessible."
        case .overheadStorage: return "Use the top shelf for seasonal items, luggage, or other rarely used belongings stored in bins or baskets."
        }
    }
    var usageDescription: String {
        switch self {
        case .hangingSpace: return "String instructions"
        case .shelves: return "String instructions"
        case .shoeRack: return "String instructions"
        case .overheadStorage: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageClosetZoneSpaceType] {
        return StorageClosetZoneSpaceType.allCases
    }
}

enum StorageUtilityRoomSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case cleaningSuppliesArea = "Cleaning Supplies Area"
    case toolStorage = "Tool Storage"
    case laundrySupplyArea = "Laundry Supply Area"
    case workbench = "Workbench"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cleaningSuppliesArea: return "Designate a shelf or cabinet for storing cleaning supplies like sprays, mops, brooms, and vacuum cleaners. Use hooks for hanging tools."
        case .toolStorage: return "Create a space for tools, such as a pegboard or toolbox, to keep everything organized and accessible."
        case .laundrySupplyArea: return "for storing detergent, fabric softener, and other laundry essentials."
        case .workbench: return "Include a small workbench area for repairs or household projects, with organized tool storage nearby."
        }
    }
    var usageDescription: String {
        switch self {
        case .cleaningSuppliesArea: return "String instructions"
        case .toolStorage: return "String instructions"
        case .laundrySupplyArea: return "String instructions"
        case .workbench: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageUtilityRoomSpaceType] {
        return StorageUtilityRoomSpaceType.allCases
    }
}

enum StorageAtticBasementSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case seasonalStorage = "Seasonal Storage"
    case longTermStorage = "Long Term Storage"
    case utilityArea = "Utility Area"
    case shelvingUnits = "Shelving Units"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .seasonalStorage: return "Use this space for storing holiday decorations, out-of-season clothing, and sporting equipment in labeled bins."
        case .longTermStorage: return "Designate an area for storing keepsakes, family heirlooms, or items not needed regularly. Ensure they are in durable, sealed containers."
        case .utilityArea: return "If the basement or attic contains home systems (HVAC, water heater), keep this space clear of clutter for easy access to these utilities."
        case .shelvingUnits: return "Install heavy-duty shelving for organizing items and maximizing vertical space, ensuring easy access to stored goods."
        }
    }
    var usageDescription: String {
        switch self {
        case .seasonalStorage: return "String instructions"
        case .longTermStorage: return "String instructions"
        case .utilityArea: return "String instructions"
        case .shelvingUnits: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageAtticBasementSpaceType] {
        return StorageAtticBasementSpaceType.allCases
    }
}

enum StoragePantrySpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case dryGoodsShelves = "Dry Goods Shelves"
    case spiceCondimentsArea = "Spice Condiments Area"
    case snackZone = "Snack Zone"
    case bulkStorage = "Bulk Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .dryGoodsShelves: return "Organize non-perishable items like canned goods, pasta, and rice on open shelves, using bins or baskets for smaller items."
        case .spiceCondimentsArea: return "Create a dedicated space for spices, oils, and condiments, using tiered racks or drawer organizers for easy access."
        case .snackZone: return "Use labeled bins or baskets to organize snacks and frequently used items for easy access, especially for kids."
        case .bulkStorage: return "Designate an area for bulk items like flour, sugar, or cereal, stored in airtight containers to keep them fresh and organized."
        }
    }
    var usageDescription: String {
        switch self {
        case .dryGoodsShelves: return "String instructions"
        case .spiceCondimentsArea: return "String instructions"
        case .snackZone: return "String instructions"
        case .bulkStorage: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StoragePantrySpaceType] {
        return StoragePantrySpaceType.allCases
    }
}

enum StorageLaundryRoomSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case laundrySortingArea = "Laundry Sorting Area"
    case laundrySupplies = "Laundry Supplies"
    case dryingRackSpace = "Drying Rack Space"
    case foldingArea = "Folding Area"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .laundrySortingArea: return "Include space for sorting laundry with hampers for whites, colors, and delicates, making the washing process more efficient."
        case .laundrySupplies: return "Install shelves or cabinets above or beside the washer/dryer for detergent, fabric softener, and stain removers."
        case .dryingRackSpace: return "Add a fold-out drying rack or a rod for hanging clothes that need to air dry."
        case .foldingArea: return "Use a countertop or fold-out table for folding clothes right out of the dryer, helping to streamline the laundry process."
            
        }
    }
    var usageDescription: String {
        switch self {
        case .laundrySortingArea: return "String instructions"
        case .laundrySupplies: return "String instructions"
        case .dryingRackSpace: return "String instructions"
        case .foldingArea: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageLaundryRoomSpaceType] {
        return StorageLaundryRoomSpaceType.allCases
    }
}

enum StorageMudroomEntrySpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case coatHooksRack = "Coat Hooks Rack"
    case shoeStorage = "Shoe Storage"
    case storageBins = "Storage Bins"
    case benchSeating = "Bench Seating"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .coatHooksRack: return "Install hooks or a coat rack for hanging jackets, hats, and bags, keeping them organized and easily accessible as you enter or exit."
        case .shoeStorage: return "Add a shoe bench or rack to keep shoes tidy and prevent clutter from accumulating in the entryway."
        case .storageBins: return "Use labeled baskets or bins for each family member to store gloves, scarves, or daily essentials like keys and mail."
        case .benchSeating: return "Include a bench for sitting while putting on shoes, ideally with storage underneath for shoes or outdoor gear."
        }
    }
    var usageDescription: String {
        switch self {
        case .coatHooksRack: return "String instructions"
        case .shoeStorage: return "String instructions"
        case .storageBins: return "String instructions"
        case .benchSeating: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageMudroomEntrySpaceType] {
        return StorageMudroomEntrySpaceType.allCases
    }
}

enum StorageCabinetShelvingSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case upperCabinets = "Upper Cabinets"
    case lowerCabinets = "Lower Cabinets"
    case openShelving = "Open Shelving"
    case storageBinsBaskets = "Storage Bins/Baskets"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .upperCabinets: return "Use upper cabinets for storing items that are used less frequently, such as seasonal dishes or rarely needed supplies."
        case .lowerCabinets: return "Store everyday items in lower cabinets for easy access, using pull-out shelves or baskets to maximize space."
        case .openShelving: return "Use open shelves for displaying decorative items or storing frequently used kitchen items, such as dishes or cookbooks."
        case .storageBinsBaskets: return "Incorporate storage bins or baskets on shelves or inside cabinets to organize smaller items and keep the space neat."
        }
    }
    var usageDescription: String {
        switch self {
        case .upperCabinets: return "String instructions"
        case .lowerCabinets: return "String instructions"
        case .openShelving: return "String instructions"
        case .storageBinsBaskets: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageCabinetShelvingSpaceType] {
        return StorageCabinetShelvingSpaceType.allCases
    }
}

enum StorageUnderBedStorageSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case storageBins = "Storage Bins"
    case drawers = "Drawers"
    case vacuumSealedBags = "Vacuum Sealed Bags"
    case shoeboxStorage = "Shoebox Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .storageBins: return "Use flat, under-bed storage bins for storing seasonal clothing, shoes, or extra bedding. Label the bins for easy identification."
        case .drawers: return "If the bed frame has built-in drawers, use them for organizing personal items, such as out-of-season clothes, linens, or shoes."
        case .vacuumSealedBags: return "Store bulky items like comforters, pillows, or sweaters in vacuum-sealed bags to maximize space under the bed."
        case .shoeboxStorage: return "Utilize this space for storing less frequently worn shoes or specialty footwear in boxes or clear containers."
        }
    }
    var usageDescription: String {
        switch self {
        case .storageBins: return "String instructions"
        case .drawers: return "String instructions"
        case .vacuumSealedBags: return "String instructions"
        case .shoeboxStorage: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageUnderBedStorageSpaceType] {
        return StorageUnderBedStorageSpaceType.allCases
    }
}

enum StorageBuiltInsWallUnitsSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case mediaStorage = "Media Storage"
    case decorDisplay = "Decor Display"
    case hiddenStorage = "Hidden Storage"
    case verticalStorage = "Vertical Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .mediaStorage: return "Use built-in shelving or wall units for storing entertainment items like books, DVDs, or gaming consoles, keeping them organized and accessible."
        case .decorDisplay: return "Designate specific shelves for displaying decorative items, family photos, or plants to add personality and style to the room."
        case .hiddenStorage: return "Utilize built-ins with doors or drawers to store clutter out of sight, such as electronics, cables, or office supplies."
        case .verticalStorage: return "Maximize the height of wall units with floor-to-ceiling storage, ensuring that rarely used items are stored on upper shelves."
        }
    }
    var usageDescription: String {
        switch self {
        case .mediaStorage: return "String instructions"
        case .decorDisplay: return "String instructions"
        case .hiddenStorage: return "String instructions"
        case .verticalStorage: return "String instructions"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageBuiltInsWallUnitsSpaceType] {
        return StorageBuiltInsWallUnitsSpaceType.allCases
    }
}


enum StorageHomeOfficeSpaceType: String, StorageSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case filingCabinets = "Filing Cabinets"
    case deskDrawers = "Desk Drawers"
    case bookShelves = "Book Shelves"
    case techGadgetStorage = "Tech Gadget Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .filingCabinets: return "Use filing cabinets to store important documents, bills, and paperwork, organizing them with folders for easy access."
        case .deskDrawers: return "Designate drawers for office supplies like pens, paper, and staplers, using dividers or trays to keep everything organized."
        case .bookShelves: return "Install shelves to store reference books, binders, or manuals, keeping your office clutter-free and improving productivity."
        case .techGadgetStorage: return "Include a designated space for tech gadgets, such as chargers, cables, and external drives, using drawers or storage bins to keep them neatly organized."
        }
    }
    var usageDescription: String {
        switch self {
        case .filingCabinets: return "String Description"
        case .deskDrawers: return "String Description"
        case .bookShelves: return "String Description"
        case .techGadgetStorage: return "String Description"
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [StorageHomeOfficeSpaceType] {
        return StorageHomeOfficeSpaceType.allCases
    }
}
extension StorageSpaceType {
    static var allStorageSpaceTypes: [any StorageSpaceType] {
        return [
            StorageClosetZoneSpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageUtilityRoomSpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageAtticBasementSpaceType.allCases.map { $0  as any StorageSpaceType},
            StoragePantrySpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageLaundryRoomSpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageMudroomEntrySpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageCabinetShelvingSpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageUnderBedStorageSpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageBuiltInsWallUnitsSpaceType.allCases.map { $0  as any StorageSpaceType},
            StorageHomeOfficeSpaceType.allCases.map { $0  as any StorageSpaceType}
        ].flatMap { $0 }
    }
}
