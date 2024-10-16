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
        case .remove: return "Start by clearing out everything from the designated area. Remove expired food, broken appliances, or items that no longer serve a purpose."
        case .clean: return "Once items are removed, thoroughly clean the surfaces, cabinets, and drawers. Use appropriate cleaning products to wipe down counters, shelves, and appliances."
        case .categorize: return "Group items by category, such as cookware, pantry items, or utensils. Place similar items together to streamline their use and access."
        case .group: return "Once categorized, group items by function or frequency of use. For example, place frequently used spices together near the stove or baking supplies in one drawer."
        case .sort: return " Sort items by size, type, or expiration date. Arrange pantry items with soon-to-expire products in the front or group utensils by size in drawers."
        case .contain: return "Use containers, bins, or baskets to store grouped items. Stackable containers work well in pantries, while drawer organizers can help keep utensils neat."
        case .label: return "Label containers, shelves, or bins to identify where everything belongs. Use clear labels for easy visibility and consistency throughout the kitchen."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary items helps you start with a clean slate, making it easier to organize and manage your kitchen. It reduces clutter and creates more usable space."
        case .clean: return "Cleaning ensures a hygienic and fresh kitchen environment. Regular cleaning helps maintain the quality of your kitchen spaces and creates a more pleasant atmosphere for cooking and meal prep."
        case .categorize: return "Categorizing items helps you create an organized kitchen that’s easy to navigate. It allows for quicker meal prep and reduces time spent searching for things, enhancing overall kitchen efficiency."
        case .group: return "Grouping items in this way enhances the flow of your kitchen, making it easier to find exactly what you need. It saves time and effort by keeping commonly used items within easy reach."
        case .sort: return "Sorting helps maintain an organized and functional kitchen. It reduces food waste by keeping track of expiration dates and makes finding the right tools or ingredients much faster."
        case .contain: return "Containing items prevents clutter and keeps everything in its place. It also maximizes storage space and creates a clean, streamlined look in your kitchen."
        case .label: return "Labeling ensures that everyone knows where items belong, making it easier to maintain organization over time. It reduces confusion and helps keep your kitchen looking tidy and functional."

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
        case .remove: return "Start by removing unnecessary or unused items from the living room. This includes old magazines, broken decor, or anything that no longer serves a purpose."
        case .clean: return "Once everything is removed, thoroughly clean surfaces like coffee tables, shelves, and electronics. Don’t forget to vacuum or mop the floors and dust in hard-to-reach areas."
        case .categorize: return "Group similar items together, such as books, electronics, or decor pieces. Keep like items in the same space for better organization."
        case .group: return "Within each category, group items by their purpose or usage. For example, keep remotes and chargers together or organize books by genre."
        case .sort: return "Sort items by size, type, or frequency of use. Keep everyday items within easy reach and store less frequently used items out of sight."
        case .contain: return "Use baskets, bins, or trays to contain items like remotes, games, or throw blankets. Choose storage solutions that fit your living room’s style while keeping items easily accessible."
        case .label: return "Label containers, shelves, or bins to ensure everything stays in its place. Clear, consistent labeling makes it easier for everyone to maintain the organization."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing clutter creates a more open and inviting space. It helps you focus on what you want to keep and makes it easier to organize, giving your living room a fresh, clean feel."
        case .clean: return "A clean living room is more comfortable and visually appealing. Regular cleaning helps maintain the room’s aesthetic, making it a pleasant space for relaxation and gatherings."
        case .categorize: return "Categorizing makes it easier to find things when you need them. It also helps you see what you have and ensures that everything has a designated place, reducing future clutter."
        case .group: return "Grouping items by function makes your living room more efficient and functional. It enhances the flow of the space, helping you access what you need quickly and easily."
        case .sort: return "Sorting keeps the room organized and makes day-to-day activities more convenient. It reduces the time spent searching for things, ensuring a streamlined and efficient space."
        case .contain: return "Containing items reduces visible clutter and keeps your living room looking neat. It also makes tidying up faster, as everything has a designated space."
        case .label: return "Labeling prevents confusion and helps keep your living room organized over time. It ensures that everyone knows where things belong, making it easier to maintain a clutter-free space."

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
 


