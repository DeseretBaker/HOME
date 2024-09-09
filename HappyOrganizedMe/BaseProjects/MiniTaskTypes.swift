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
    var instruction: String { get }
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
    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove items from the kitchen."
        case .clean: return "Clean the kitchen."
        case .categorize: return "Categorize items in the kitchen."
        case .group: return "Group items in the kitchen."
        case .sort: return "Sort items in the kitchen."
        case .contain: return "Contain items in the kitchen."
        case .label: return "Label items in the kitchen."
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
    // TODO: go through every object that conforms to `MiniTaskType` and add the `var instructions` computed variable.
    var instruction: String {
        switch self {
        case .clean: return "Clean the things."
        case .organize: return "Organize all the stuff."
        case .label: return "Labeling things is fun!"
        case .remove: return "Get rid of all the stuff you don't use!"
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
    var instruction: String {
        "blalalblalb"
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
    var instruction: String {
        "blalalblalb"
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
    var instruction: String {
        "blalalblalb"
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
    var instruction: String {
        "blalalblalb"
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
    var instruction: String {
        "blalalblalb"
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
    var instruction: String {
        "blalalblalb"
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
    var instruction: String {
        "blalalblalb"
    }

}

enum UnknownMiniTaskType: String, MiniTaskType, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
    var instruction: String {
        "blalalblalb"
    }

}
