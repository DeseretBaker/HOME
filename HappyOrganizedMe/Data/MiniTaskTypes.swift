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
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
}
enum KitchenMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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
        enum LivingRoomMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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
        enum DiningRoomMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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

        enum OfficeMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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

        enum BedroomMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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
        

enum PlayroomMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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

        enum StorageMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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

        enum BathroomMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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

        enum GarageMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
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

        enum UnknownMiniTaskType: String, MiniTaskType, Codable, CaseIterable {
                case unknown
                
                var name: String { rawValue }
                var imageName: String { rawValue }
                var instructions: String { "String" }
                var usageDescription: String { "String" }
                var weight: Double { 0.0 }
                var type: String { "unknown" }
                var category: String { "unknown" }
                }
