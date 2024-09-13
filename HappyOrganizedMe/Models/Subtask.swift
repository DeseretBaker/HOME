//
//  SubTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class SubTask: Identifiable, Displayable, Progressable, ObservableObject {
    var instructions: String
    var usageDescription: String
    var type: String
    var category: String
    var miniTasks: [MiniTask]
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var subTaskTypeString: String // Store the raw value of SubTaskType as a String
    // Define relationships to miniTasks and space
    @Relationship(inverse: \Space.subTasks) var space: Space? // Establishes a many-to-one relationship with Space
    
    
    private var _isCompleted: Bool = false
    
    // Computed property to get the `SubTaskType` enum from the stored raw value
    var subTaskType: any SubTaskType {
        get {
            resolveSubTaskType(from: subTaskTypeString) ?? UnknownSubTaskType.unknown }
        set {
            subTaskTypeString = newValue.rawValue }
    }
    
    // MARK: Computed Variables (from the Displayable protocol)
    var name: String { subTaskType.name }
    var imageName: String { subTaskType.imageName }
    var weight: Double { subTaskType.weight }
    
    // conformance to Progressable protocol
    var progress: Double {
        guard !miniTasks.isEmpty else { return 0.0 }
        let completedTasks = miniTasks.filter { $0.isCompleted }.count
        return Double(completedTasks) / Double(miniTasks.count) * 100
    }
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    // Method to toggle the completion status
    func toggleCompleted() {
        _isCompleted.toggle()
    }
    // Initializer
    init(subTaskType: any SubTaskType, instructions: String, usageDescription: String, type: String, category: String, miniTasks: [MiniTask], isCompleted: Bool = false) {
        self.subTaskTypeString = subTaskType.rawValue
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.type = type // e.g., LivingRoom, Kitchen
        self.category = category // e.g., Furniture, Appliances
        self.miniTasks = miniTasks
        self._isCompleted = isCompleted
    }
}
    
