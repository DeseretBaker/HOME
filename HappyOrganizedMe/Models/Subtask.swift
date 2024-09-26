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
    
    var miniTasks: [MiniTask]
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    var subTaskType: SubTaskTypeBox // Use the SubTaskType enum directly, not the protocol
    private var _isCompleted: Bool = false
    // Define relationships to miniTasks and subTask
    @Relationship(inverse: \Space.subTasks) var space: Space? // Establishes a many-to-one relationship with Space

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
 
    // Initializer
    init(subTaskType: SubTaskTypeBox, instructions: String, usageDescription: String, miniTasks: [MiniTask] = [], isCompleted: Bool = false) {
        self.subTaskType = subTaskType
        self.instructions = instructions
        self.usageDescription = usageDescription
        
        self.miniTasks = miniTasks
        self._isCompleted = isCompleted
    }
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    // Method to toggle the completion status
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
