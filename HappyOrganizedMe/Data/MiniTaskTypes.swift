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
enum KitchenMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case group
    case sort
    case contain
    case label
    
    var name: String {
        switch self {
        case .remove: return "Remove"
        case .categorize: return "Categorize"
        case .group: return "Group"
        case .sort: return "Sort"
        case .contain: return "Contain"
        case .clean: return "Clean"
        case .label: return "Label"
        }
    }
        var imageName: String { rawValue }
        var rawValue: String { "String" }
        
    var instructions: String? {
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
    var usageDescription: String? {
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
        enum LivingRoomMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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
        enum DiningRoomMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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

        enum OfficeMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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

        enum BedroomMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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
        

enum PlayroomMiniTaskType: String, MiniTaskType, CaseIterable {
    case remove
    case clean
    case categorize
    case group
    case sort
    case contain
    case label
    
    var name: String {
        switch self {
        case .remove: return "Remove"
        case .categorize: return "Categorize"
        case .group: return "Group"
        case .sort: return "Sort"
        case .contain: return "Contain"
        case .clean: return "Clean"
        case .label: return "Label"
        }
    }
        var imageName: String { rawValue }
        var rawValue: String { "String" }
        
    var instructions: String? {
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
    var usageDescription: String? {
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

        enum StorageMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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

        enum BathroomMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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

        enum GarageMiniTaskType: String, MiniTaskType, CaseIterable {
            case remove
            case clean
            case categorize
            case group
            case sort
            case contain
            case label
            
            var name: String {
                switch self {
                case .remove: return "Remove"
                case .categorize: return "Categorize"
                case .group: return "Group"
                case .sort: return "Sort"
                case .contain: return "Contain"
                case .clean: return "Clean"
                case .label: return "Label"
                }
            }
                var imageName: String { rawValue }
                var rawValue: String { "String" }
                
            var instructions: String? {
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
            var usageDescription: String? {
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

        enum UnknownMiniTaskType: String, MiniTaskType, CaseIterable {
                case unknown
                
                var name: String { rawValue }
                var imageName: String { rawValue }
                var instructions: String? { "String" }
                var usageDescription: String? { "String" }
                var weight: Double { 0.0 }
            }
