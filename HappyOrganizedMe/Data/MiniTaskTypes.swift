//
//  MiniTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation


enum KitchenMiniTaskType: String, Codable, CaseIterable {
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}
enum LivingRoomMiniTaskType: String, Codable, CaseIterable {
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}
enum DiningRoomMiniTaskType: String, Codable, CaseIterable {
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum OfficeMiniTaskType: String, Codable, CaseIterable, Identifiable {
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
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum BedroomMiniTaskType: String, Codable, CaseIterable, Identifiable {
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
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}


enum PlayroomMiniTaskType: String, Codable, CaseIterable, Identifiable {
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
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum StorageMiniTaskType: String, Codable, CaseIterable, Identifiable {
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
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum BathroomMiniTaskType: String, Codable, CaseIterable, Identifiable {
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
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum GarageMiniTaskType: String, Codable, CaseIterable, Identifiable {
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
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .clean: return "String"
        case .label: return "String"
        case .remove: return "String"
        case .categorize: return "String"
        case .group: return "String"
        case .sort: return "String"
        case .contain: return "String"
        }
    }
    var weight: Double { 5.0 }
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
}

enum UnknownMiniTaskType: String, Codable, CaseIterable, Identifiable {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "String" }
    var usageDescription: String { "String" }
    var weight: Double { 0.0 }
    var type: String { "unknown" }
    var category: String { "unknown" }
}

//protocol MiniTaskType: Codable, CaseIterable, customStringConverible {
//    var name: String { get }
//    var imageName: String { get }
//    var instructions: String { get }
//    var usageDescription: String { get }
//    var weight: Double { get }
//    var type: String { get }
//    var category: String { get }
//    var rawValue: String { get }
//    init?(rawValue: String)
//}

//extension MiniTaskType {
//    static var allMiniTaskTypes: [any MiniTaskType] {
//        return [
//            
//            KitchenMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            LivingRoomMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            DiningRoomMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            OfficeMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            BedroomMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            PlayroomMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            StorageMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            BathroomMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            GarageMiniTaskType.allCases.map { $0 as any MiniTaskType},
//            UnknownMiniTaskType.allCases.map { $0 as any MiniTaskType}
//        ].flatMap { $0 }
//    }
//}
