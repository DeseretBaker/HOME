//
//  MiniTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation


enum KitchenMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
    
    
    
    
    static var MiniTaskType: [any MiniTaskType] {
        return KitchenMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum LivingRoomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  

    static var MiniTaskType: [any MiniTaskType] {
        return LivingRoomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}
enum DiningRoomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return DiningRoomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum OfficeMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return OfficeMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum BedroomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return BedroomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}


enum PlayroomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  

    static var MiniTaskType: [any MiniTaskType] {
        return PlayroomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum StorageMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return StorageMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum BathroomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return BathroomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum GarageMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Take everything off the countertop or out of the selected space."
        case .clean: return "Thoroughly clean the cleared area."
        case .categorize: return "Separate items into categories based on their use or type."
        case .group: return "Place similar or like items together. This step will help you understand what you have and gives a blank slate for organizing."
        case .sort: return "Decide what should be kept, relocated, donated, or discarded."
        case .contain: return "Use containers or organizers to hold items together. This step will help you understand what you have and what should go back into the space."
        case .label: return "Label containers, bins, or shelves to maintain order. This step will help others to put items back in the right place."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Start by removing all items from the area. Place them on a nearby table or clear space. This helps to see what you have and gives a blank slate for organizing."
        case .clean: return "Wipe down surfaces using a damp cloth and a suitable cleaner. Pay special attention to any stains, crumbs, or sticky spots. Let the area dry completely before moving on."
        case .categorize: return "Group similar items together, such as baking tools, utensils, or spices. This step will help you understand what you have and what should go back into the space."
        case .group: return "Arrange items within each category into smaller groups. For example, group measuring cups with measuring spoons or knives with cutting boards. This will make it easier to find and access them."
        case .sort: return "If you don't LOVE IT, NEED IT, OR SEE IT IN YOUR FUTURE. LET IT GO! Sort through each group and decide if each item is essential, frequently used, or rarely used. Remove anything that is broken, expired, or no longer needed. Consider storing infrequently used items elsewhere."
        case .contain: return "Place items into baskets, bins, or drawer organizers. Use containers that fit the space and are easy to access. This helps keep the area tidy and prevents items from scattering."
        case .label: return "Use a label maker, stickers, or masking tape to clearly mark what belongs in each container or section. This makes it easy to maintain organization and quickly find what you need."

        }
    }
    var weight: Double { 0.20 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return GarageMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum UnknownMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "String" }
    var usageDescription: String { "String" }
    var weight: Double { 0.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
}
 


