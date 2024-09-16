//
//  ProjectType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

/// Represents different types of projects in the HappyOrganizedMe app.
//enum ProjectType: String, Codable, CaseIterable {
//    case kitchen = "Kitchen"
//    case diningRoom = "Dining Room"
//    case livingRoom = "Living Room"
//    case bedroom = "Bedroom"
//    case bathroom = "Bathroom"
//    case playroom = "Playroom"
//    case office = "Office"
//    case storage = "Storage"
//    case garage = "Garage"
//    case unknown = "Unknown"
//    // Added the unknown case
//    
    /// The display name for the project type.
    var name: String { rawValue }
    /// The image name associated with the project type.
    var imageName: String { rawValue }
    /// Instructions associated with the project type.
    var instructions: String? {
        switch self {
        case .kitchen: return NSLocalizedString("Kitchen", comment: "Kitchen instructions")
        case .diningRoom: return NSLocalizedString("Dining Room", comment: "Dining Room instructions")
        case .livingRoom: return NSLocalizedString("Living Room", comment: "Living Room instructions")
        case .bathroom: return NSLocalizedString("Bathroom", comment: "Bathroom instructions")
        case .bedroom: return NSLocalizedString("Bedroom", comment: "Bedroom instructions")
        case .storage: return NSLocalizedString("Storage", comment: "Storage instructions")
        case .office: return NSLocalizedString("Office", comment: "Office instructions")
        case .garage: return NSLocalizedString("Garage", comment: "Garage instructions")
        case .playroom: return NSLocalizedString("Playroom", comment: "Playroom instructions")
        case .unknown: return NSLocalizedString("Unknown Project", comment: "Unknown Project instructions")
        }
    }
    
    /// Usage description associated with the project type.
    var usageDescription: String? {
        switch self {
        case .kitchen: return "In a well-organized kitchen, dividing the space into functional “zones” can help make cooking, cleaning, and organizing more efficient. Here are some common kitchen zones and their purposes. These zones can be customized depending on your specific kitchen needs, but the key is organizing the kitchen in a way that reduces movement and maximizes efficiency."
        case .diningRoom: return "In a dining room, creating zones can help improve the flow and functionality of the space, especially if it serves multiple purposes. Here are some common dining room zones. By organizing these zones in a way that complements how you use the dining room, you can create a space that is both functional and inviting."
        case .livingRoom: return "A living room is a versatile space that serves various functions, and dividing it into different zones can make it more functional and comfortable. Here are some common zones in a living room. These zones can be customized depending on the size of the room and your lifestyle, making the living room a multipurpose and inviting space for various activities."
        case .bathroom: return "In a bathroom, creating functional zones can help make the space more efficient and organized. Here are some common bathroom zones. These zones can be arranged based on the size and layout of the bathroom, making the space more functional and tailored to personal needs.​"
        case .bedroom: return "In a bedroom, organizing zones can create a more functional and relaxing space. Here are some common bedroom zones. These zones can be arranged based on the size and layout of the bedroom, making the space more functional and tailored to personal needs. By organizing the bedroom into zones, you can make the space more efficient, comfortable, and tailored to your lifestyle needs."
        case .storage: return "A storage zone in a home is an organized area dedicated to keeping items that are not in daily use but still need to be accessible. Here are some key types of storage zones within a home. These zones can be customized depending on the size of the home and the items that need to be stored.A well-organized storage zone ensures that items are easy to locate and prevents clutter from accumulating, improving both the functionality and aesthetics of your home."
        case .office: return "A home office is a multifunctional space that benefits from being organized into specific zones to boost productivity and comfort. Here are common zones in a well-designed home officeEach zone can be customized to meet your personal work needs, whether you require a space for focused tasks, creativity, or meetings. By organizing the home office into these zones, you can create a space that supports your productivity and work-life balance."
        case .garage: return "A well-organized garage can serve multiple purposes beyond just parking cars. Dividing the garage into functional zones helps maximize the space and keep everything in order. Here are some common zones in a garage. By dividing the garage into these zones, you can optimize the space and keep the garage functional for all its intended purposes, from parking cars to organizing tools, equipment, and household supplies."
        case .playroom: return "Organizing a playroom into specific zones can help keep it functional, tidy, and enjoyable for children. Here are common zones that can make a playroom more organized and purposeful. By dividing a playroom into these zones, you can create a fun, organized space where children can engage in different types of play and activities while also learning to keep things tidy. It also helps children transition easily between various play and learning experiences."
        case .unknown: return "Unknown Project"
        }
    }
    
    /// A weight value representing the priority or importance of the project type.
    var weight: Double {
        switch self {
        case .kitchen, .garage: return 5
        case .bathroom, .storage: return 4
        case .office, .playroom, .bedroom: return 3
        case .livingRoom: return 2
        case .diningRoom: return 1
        case .unknown: return 0
        }
    }
    
    /// Returns an array of display names for all project types.
    static var allDisplayNames: [ProjectType] {
        return ProjectType.allCases
    }
}
