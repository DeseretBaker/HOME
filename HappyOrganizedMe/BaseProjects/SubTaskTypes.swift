//
//  SubTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol SubTaskType: Codable, CaseIterable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    var description: String { get }
    init?(rawValue: String)
}
enum KitchenSubTaskType: String, SubTaskType, CaseIterable {
    case cookware
    case bakeware
    case serveWare
    case utensils
    case smallAppliances
    case cookingZone
    case drinkZone
    case bakingZone
    case prepZone
    case applianceZone
    case servingZone
    case dinnerware
    case tableware
    case foodStorageContainers
    case cookbooks
    case glassware
    case tableLinens
    case kitchenAids
    case occasionalItems
    case trashAndRecycling
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 1.0 }
       
    var description: String {
         // FIXME: Change this to a switch that gives actual data
        switch self {
        case .cookware: return ""
        case .bakeware: return ""
        case .serveWare: return ""
        case .utensils: return ""
        case .smallAppliances: return ""
        case .cookingZone: return ""
        case .drinkZone: return ""
        case .bakingZone: return ""
        case .prepZone: return ""
        case .applianceZone: return ""
        case .servingZone: return ""
        case .dinnerware: return ""
        case .tableware: return ""
        case .foodStorageContainers: return  ""
        case .cookbooks: return  ""
        case .glassware: return  ""
        case .tableLinens: return ""
        case .kitchenAids: return ""
        case .occasionalItems: return ""
        case .trashAndRecycling: return ""
        }
    }
}
enum LivingRoomSubTaskType: String, SubTaskType, CaseIterable {
    case Tables
    case floatingShelves
    case windowBoxSeat
    case bookshelf
    case cornerShelves
    case ottoman
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .Tables: return 2.0
        case .floatingShelves: return 2.0
        case .windowBoxSeat: return 2.0
        case .bookshelf: return 2.0
        case .cornerShelves: return 2.0
        case .ottoman: return 2.0
        }
    }
    var description: String {
        switch self {
        case .Tables: return "Tables!"
        case .floatingShelves: return "Floating Shelves!"
        case .windowBoxSeat: return "Window Box Seats!"
        case .bookshelf: return "Bookshelves!"
        case .cornerShelves: return "Corner Shelves!"
        case .ottoman: return "Ottomans!"
        }
    }
}
enum DiningRoomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum OfficeSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum BedroomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum PlayroomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum BathroomSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum StorageSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum GarageSubTaskType: String, SubTaskType, CaseIterable {
    case declutter
    case organize
    case clean
    case polish
    case tableLinens
    case accessories
    case repairsAndUpdates
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .declutter: return 2
        case .organize: return  2
        case .clean: return  2
        case .polish: return  2
        case .tableLinens: return  2
        case .accessories: return  2
        case .repairsAndUpdates: return 3
        }
    }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
enum UnknownSubTaskType: String, SubTaskType, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
    var description: String {
        "Bananas!" // FIXME: Change this to a switch that gives actual data
    }
}
