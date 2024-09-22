//
//  DefaultSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/21/24.
//
import Foundation

struct DefaultSpaceType: SpaceType, Codable, Identifiable {
    var id: UUID
    var name: String
    var imageName: String
    var instructions: String
    var usageDescription: String
    var weight: Double
    var subTaskTypes: [SubTaskTypeBox]
    var rawValue: String
    
    // Default Initializer
    init() {
        self.id = UUID()
        self.name = "Default Space"
        self.instructions = "These are default instructions for this space."
        self.usageDescription = "Default usage description for this space."
        self.subTaskTypes = [SubTaskTypeBox.defaultSubTask(DefaultSubTaskType())] // Use SubTaskTypeBox
        self.weight = 0.0
        self.imageName = "default_image"
        self.rawValue = "default_raw_value"
    }

    // Implementing CaseIterable (if needed)
    static var allCases: [DefaultSpaceType] {
        [DefaultSpaceType()]
    }
    
    // If you want to add the ability to initialize from `rawValue`
    init?(rawValue: String) {
        self.init()
        self.rawValue = rawValue
    }
}

// Assuming SubTaskType is another protocol in your project
struct DefaultSubTaskType: SubTaskType, Codable, Identifiable {
    var id: UUID
    var name: String = "Default SubTask"
    var imageName: String = "default_subtask_image"
    var instructions: String = "These are default instructions for this subtask."
    var usageDescription: String = "Default usage description for this subtask."
    var weight: Double = 0.0
    var rawValue: String = "default_subtask_raw_value"
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    } // Make sure MiniTaskTypeBox conforms to Codable
   
    
    // Default Initializer
    init() {
        self.id = UUID()
        self.name = "Default SubTask"
        self.instructions = "These are default instructions for this subtask."
        self.usageDescription = "Default usage description for this subtask."
        self.weight = 0.0
        self.imageName = "default_subtask_image"
        self.rawValue = "default_subtask_raw_value"
    }
    
    // Implementing CaseIterable (if needed)
    static var allCases: [DefaultSubTaskType] {
        [DefaultSubTaskType()]
    }
    
    // Custom Initializer with rawValue
    init?(rawValue: String) {
        self.init()
        guard !rawValue.isEmpty else {
            return nil // Handle invalid rawValue
        }
        self.rawValue = rawValue
    }
}


// Assuming MiniTaskType is a protocol
struct DefaultMiniTaskType: MiniTaskType, Codable, Identifiable {
    var id: UUID
    var name: String = "Default MiniTask"
    var imageName: String = "default_minitask_image"
    var instructions: String = "These are default instructions for this minitask."
    var usageDescription: String = "Default usage description for this minitask."
    var weight: Double = 0.0
    var rawValue: String = "default_minitask_raw_value"
    
    
    // Default Initializer
    init() {
        self.id = UUID()
        self.name = "Default MiniTask"
        self.instructions = "These are default instructions for this minitask."
        self.usageDescription = "Default usage description for this minitask."
        self.weight = 0.0
        self.imageName = "default_minitask_image"
        self.rawValue = "default_minitask_raw_value"
    }
    
    // Implementing CaseIterable (if needed)
    static var allCases: [DefaultMiniTaskType] {
        [DefaultMiniTaskType()]
    }
    
    // Custom Initializer with rawValue
    init?(rawValue: String) {
        self.init()
        guard !rawValue.isEmpty else {
            return nil // Handle invalid rawValue
        }
        self.rawValue = rawValue
    }
}
