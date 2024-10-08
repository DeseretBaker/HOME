//
//  MiniTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation


enum KitchenMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
  
}
enum LivingRoomMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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

}
enum DiningRoomMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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

}

enum OfficeMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
 
}

enum BedroomMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
 
}


enum PlayroomMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
 
}

enum StorageMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
  
}

enum BathroomMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
 
}

enum GarageMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
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
   
}

enum UnknownMiniTaskType: String, Codable, CaseIterable, Identifiable, MiniTaskType {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "String" }
    var usageDescription: String { "String" }
    var weight: Double { 0.0 }
   
}



extension MiniTaskType {
    static var allMiniTaskTypes: [any MiniTaskType] {
        return [
            
            KitchenMiniTaskType.allCases.map { $0 as any MiniTaskType},
            LivingRoomMiniTaskType.allCases.map { $0 as any MiniTaskType},
            DiningRoomMiniTaskType.allCases.map { $0 as any MiniTaskType},
            OfficeMiniTaskType.allCases.map { $0 as any MiniTaskType},
            BedroomMiniTaskType.allCases.map { $0 as any MiniTaskType},
            PlayroomMiniTaskType.allCases.map { $0 as any MiniTaskType},
            StorageMiniTaskType.allCases.map { $0 as any MiniTaskType},
            BathroomMiniTaskType.allCases.map { $0 as any MiniTaskType},
            GarageMiniTaskType.allCases.map { $0 as any MiniTaskType},
            UnknownMiniTaskType.allCases.map { $0 as any MiniTaskType}
        ].flatMap { $0 }
    }
}
