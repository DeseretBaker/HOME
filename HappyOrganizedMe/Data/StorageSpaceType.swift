//
//  StorageSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation


// MARK: StorageSpaceZone

enum StorageSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    
    case closetSpaces = "All the Closets"
    case builtInSpaces = "All the Nooks"
    case longTermStorage = "Long Term Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .closetSpaces: return "Use hanging rods for clothing, organized by type (e.g., shirts, dresses, pants). Maximize space with double rods or specialized hangers. Store folded clothes, shoes, or bins on closet shelves. Use dividers or baskets to keep items neatly arranged. Install a shoe rack or tiered shelves to keep shoes organized and easily accessible. Use the top shelf for seasonal items, luggage, or other rarely used belongings stored in bins or baskets. Utilize this space for storing less frequently worn shoes or specialty footwear in boxes or clear containers."
        case .builtInSpaces: return "Use built-in shelving or wall units for storing entertainment items like books, DVDs, or gaming consoles, keeping them organized and accessible. Designate specific shelves for displaying decorative items, family photos, or plants to add personality and style to the room. Utilize built-ins with doors or drawers to store clutter out of sight, such as electronics, cables, or office supplies. Maximize the height of wall units with floor-to-ceiling storage, ensuring that rarely used items are stored on upper shelves."
        case .longTermStorage: return "Use flat, under-bed storage bins for storing seasonal clothing, shoes, or extra bedding. Label the bins for easy identification. If the bed frame has built-in drawers, use them for organizing personal items, such as out-of-season clothes, linens, or shoes. Store bulky items like comforters, pillows, or sweaters in vacuum-sealed bags to maximize space under the bed. Use upper cabinets for storing items that are used less frequently, such as seasonal dishes or rarely needed supplies. Store everyday items in lower cabinets for easy access, using pull-out shelves or baskets to maximize space. Incorporate storage bins or baskets on shelves or inside cabinets to organize smaller items and keep the space neat. Include a bench for sitting while putting on shoes, ideally with storage underneath for shoes or outdoor gear. Use this space for storing holiday decorations, out-of-season clothing, and sporting equipment in labeled bins. If the basement or attic contains home systems (HVAC, water heater), keep this space clear of clutter for easy access to these utilities. Designate an area for storing keepsakes, family heirlooms, or items not needed regularly. Ensure they are in durable, sealed containers. Install heavy-duty shelving for organizing items and maximizing vertical space, ensuring easy access to stored goods."
        }
    }
    var usageDescription: String {
        switch self {
        case .closetSpaces: return "There are many kinds of closets, but here are some general tips for organizing them. First, make sure your closets are clean and free from clutter. Next, label your closets with the items you store in them. This will help you find them easily. Finally, use organizers to help you organize your closets. There are many different types of organizers available, so you can find one that works best for you."
        case .builtInSpaces: return "Built in spaces are great for storing small items. Use organizers to help you organize your built in spaces. There are many different types of organizers available, so you can find one that works best for you. For example, you can use a magnetic organizer to help you organize your shoes."
        case .longTermStorage: return "Long-term storage is great for storing items that you don't need to use immediately. Use organizers to help you organize your long-term storage. There are many different types of organizers available, so you can find one that works best for you. For example, you can use a magnetic organizer to help you organize your shoes."
        }
    }
    var weight: Double { 1.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .closetSpaces: return true
        case .builtInSpaces: return true
        case .longTermStorage: return true
        }
    }
    
    
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {

        case .closetSpaces: return [ SubTaskTypeBox(StorageSubTaskType.allTheClosets)! ]
        case .builtInSpaces:
            return [ SubTaskTypeBox(StorageSubTaskType.allTheNooks)! ]
        case .longTermStorage: return [ SubTaskTypeBox(StorageSubTaskType.longTermStorage)! ]
        }
    }
    static var longTermStorageSubTask: [StorageSpaceType] {
        return [.longTermStorage]
    }
    static var builtInsWallUnitsSubTasks: [StorageSpaceType] {
        return [.builtInSpaces]
    }
    static var closetSpaceSubTasks: [StorageSpaceType] {
        return [.closetSpaces]
    }
    static var SpaceType: [any SpaceType] {
        return StorageSpaceType.allCases.map { $0 as any SpaceType }
    }
}


