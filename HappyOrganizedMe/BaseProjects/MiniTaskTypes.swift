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
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum LivingRoomMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum DiningRoomMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum OfficeMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum BedroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum PlayroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum StorageMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum BathroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum GarageMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case sort
    case group
    case contain
    case label
    
    var name: String { self.rawValue }
    
    var imageName: String { self.rawValue }
    
    var weight: Double { 1.0 }

    var instruction: String {
        // TODO: Rewrite these strings to actually make sense.
        switch self {
        case .remove: return "Remove all items from the section you are working in, place them on the counter, table, or on a tarp or blanket on the floor."
        case .clean: return "Clean the surface,  If the surface is made of wood, use a wood cleaner or a damp cloth followed by a dry cloth to avoid water damage. For metal or glass shelves, use a gentle cleaner or a mixture of water and vinegar to clean surfaces."
        case .categorize: return "Categorize items, if you have items that belong to another room, place them in a box or a basket and put them in the appropriate room at the end."
        case .sort: return "Sort items, into four sections: keep, donate, belongs to someone else or somewhere else, trash(throw items away immediately, you don't want to risk them getting put back into your space)."
        case .group: return "Group similar items, place items that belong to the same category together."
        case .contain: return "Contain items place like items that belong to the same category together in baskets or boxes."
        case .label: return "Label containers or shelves, if you know where it goes it will be easier to put back."
        }
    }
}
enum UnknownMiniTaskType: String, MiniTaskType, CaseIterable {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var weight: Double { 0.0 }
    var instruction: String {
        "Unknown Task"
    }

}
