//
//  MiniTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import Foundation
import SwiftData
import SwiftUI

@Model
class MiniTask: Identifiable, Displayable {
    var instructions: String
    var usageDescription: String
    var type: String
    var category: String
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var miniTaskTypeString: String // Store the raw value of the task type
    
    // Define relationship with CheckableItems
    @Relationship var checkableItems: [CheckableItem] = []

    // Use a concrete type for `MiniTaskType`, assuming it's an enum
    var miniTaskType: any MiniTaskType {
        get {
            resolveMiniTaskType(from: miniTaskTypeString) ?? UnknownMiniTaskType.unknown  // Provide a default case if necessary
        }
        set {
            miniTaskTypeString = newValue.rawValue
        }
    }

    // Define relationship to SubTask
    @Relationship(inverse: \SubTask.miniTasks) var subTask: SubTask?

    // MARK: Computed Variables
    var name: String { miniTaskType.name }
    var imageName: String { miniTaskType.imageName }
    var weight: Double { miniTaskType.weight }
    var instruction: String? { miniTaskType.instructions }
    var progress: Double { Double(subTask?.progress ?? 0) }
    
    private var _isCompleted: Bool = false
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(miniTaskType: any MiniTaskType, instructions: String, usageDescription: String, type: String, category: String, isCompleted: Bool = false) {
        self.miniTaskTypeString = miniTaskType.rawValue
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.type = type
        self.category = category
        self._isCompleted = isCompleted
    }
    
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
