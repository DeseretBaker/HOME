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
 


