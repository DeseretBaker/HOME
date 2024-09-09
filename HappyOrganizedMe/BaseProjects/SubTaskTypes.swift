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
    case livingRoomSideTable
    case livingRoomCoffeeTable
    case livingRoomConsoleTable
    case livingRoomDesk
    case livingRoomShelving
    case livingRoomOttoman
    case livingRoomWindowBoxSeat

    var name: String {
        switch self {
        case .livingRoomSideTable: return "Side tables"
        case .livingRoomCoffeeTable: return "Coffee tables"
        case .livingRoomConsoleTable: return "Console tables"
        case .livingRoomDesk: return "Desks"
        case .livingRoomShelving: return "Shelving"
        case .livingRoomOttoman: return "Ottomans"
        case .livingRoomWindowBoxSeat: return "Window box seats"
        }
    }
var imageName: String { rawValue }
    
    var weight: Double { 2.0 }
            
    var description: String {
        switch self {
        case .livingRoomSideTable: return "These are small tables placed beside sofas or armchairs, typically used to hold lamps, drinks, or small decorative items."
        case .livingRoomCoffeeTable: return "Coffee tables are central pieces typically placed in front of a sofa or seating area. They are low to the ground and come in various shapes (round, rectangular, square)..."
        case .livingRoomConsoleTable: return "Console tables are narrow, longer tables usually placed against walls or behind sofas. They are often used for displaying decor, but they can be optimized for storage."
        case .livingRoomDesk: return "Desks are large, flat surfaces typically placed in front of a sofa or seating area. They are often used for storing books, magazines, or other items."
        case .livingRoomShelving: return "Bookshelf"
        case .livingRoomOttoman: return "Ottomans can serve as a table surface when paired with a tray on top, but many also offer hidden storage inside."
        case .livingRoomWindowBoxSeat: return "Window box seats are small, low-profile benches that are usually placed in a bay window, these are a great place to store soft items ie: throw pillows, blankets, table linens, seat cushions."
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
