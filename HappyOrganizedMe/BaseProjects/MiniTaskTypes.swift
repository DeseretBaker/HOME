//
//  MiniTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol MiniTaskType: Codable, CaseIterable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var rawValue: String { get }
    init?(rawValue: String)
}
enum KitchenMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case group
    case sort
    case contain
    case label
    
    var name: String { self.rawValue }
    var imageName: String { self.rawValue }
    var weight: Double {
        switch self {
        case .remove: return 1.0
        case .clean: return 1.0
        case .categorize: return 1.0
        case .group: return 1.0
        case .sort: return 1.0
        case .contain: return 1.0
        case .label: return 1.0
        }
    }
}
enum LivingRoomMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum DiningRoomMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum OfficeMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum BedroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum PlayroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum StorageMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum BathroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}
enum GarageMiniTaskType: String, MiniTaskType, CaseIterable {
    case clean
    case organize
    case label
    case remove
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double {
        switch self {
        case .clean: return 1.0
        case .organize: return 2.0
        case .label: return 0.5
        case .remove: return 1.5
        }
    }
}

enum UnknownMiniTaskType: String, MiniTaskType, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
}
