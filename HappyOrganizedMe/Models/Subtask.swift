//
//  SubTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class SubTask: Identifiable, Displayable {
    var instructions: String = "Default Instructions"
    var usageDescription: String = "Default Usage Description"
    var type: String = "Default Type"
    var category: String = "Default Category"
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var subTaskTypeString: String // Store the raw value of SubTaskType as a String
    
    // Computed property to get the `SubTaskType` enum from the stored raw value
    var subTaskType: any SubTaskType {
        get {
            resolveSubTaskType(from: subTaskTypeString) ?? UnknownSubTaskType.unknown
        }
        set {
            subTaskTypeString = newValue.rawValue
        }
    }

    // Define relationships to miniTasks and space
    var miniTasks: [MiniTask] = [] // One-to-many relationship with MiniTask
    @Relationship(inverse: \Space.subTasks) var space: Space? // Establishes a many-to-one relationship with Space
    
    // MARK: Computed Variables (from the Displayable protocol)
    var name: String { subTaskType.name }
    var imageName: String { subTaskType.imageName }
    var instruction: String? { subTaskType.instructions }
    var weight: Double { subTaskType.weight }
    
    // Progress calculation for the subtask
    var progress: Double {
        guard !miniTasks.isEmpty else { return 0.0 }
        let completedMiniTasks = miniTasks.filter { $0.isCompleted }.count
        return Double(completedMiniTasks) / Double(miniTasks.count) * 100
    }
    
    // To store the completion state of the subtask
    private var _isCompleted: Bool = false
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(subTaskType: any SubTaskType, space: Space, miniTasks: [MiniTask], isCompleted: Bool = false) {
        self.subTaskTypeString = subTaskType.rawValue
        self.space = space
        self.miniTasks = miniTasks
        self._isCompleted = isCompleted
    }
    
    // Method to toggle the completion status
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
