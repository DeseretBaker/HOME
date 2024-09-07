//
//  ProjectType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

/// Represents different types of projects in the HappyOrganizedMe app.
enum ProjectType: String, Codable, CaseIterable {
    case kitchen
    case diningRoom
    case livingRoom    
    case bedroom
    case bathroom
    case playroom
    case office
    case storage
    case garage
    
    /// The display name for the project type.
    var name: String {
        switch self {
        case .kitchen: return "Kitchen"
        case .diningRoom: return "Dining Room"
        case .livingRoom: return "Living Room"
        case .bathroom: return "Bathroom"
        case .bedroom: return "Bedroom"
        case .storage: return "Storage"
        case .office: return "Office"
        case .garage: return "Garage"
        case .playroom: return "Playroom"
        }
    }

    /// The image name associated with the project type.
    var imageName: String {
        return rawValue
    }

    /// A weight value representing the priority or importance of the project type.
    var weight: Double {
        switch self {
        case .kitchen, .garage: return 5
        case .bathroom, .storage: return 4
        case .office, .playroom, .bedroom: return 3
        case .livingRoom: return 2
        case .diningRoom: return 1
        }
    }
    
    /// Returns an array of display names for all project types.
    static var allDisplayNames: [String] {
        return ProjectType.allCases.map { $0.name }
    }
}
