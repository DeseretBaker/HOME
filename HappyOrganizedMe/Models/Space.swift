//
//  Space.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import Foundation
import SwiftData


@Model
class Space: Identifiable, Displayable, Progressable, ObservableObject  {
    var instructions: String
    var usageDescription: String
   
    var subTasks: [SubTask] = []

    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var spaceType: SpaceTypeBox // Use the SpaceType enum directly
    private var _isCompleted: Bool = false

    // MARK: Computed Variables
    var name: String { spaceType.name }
    
    var imageName: String { spaceType.imageName }
    
    var weight: Double { spaceType.weight }

    // Conformance to Progressable protocol
    var progress: Double {
        guard !subTasks.isEmpty else { return 0.0 }
        let completedSubTasks = subTasks.filter { $0.isCompleted }.count
        return Double(completedSubTasks) / Double(subTasks.count) * 100
    }

    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }

    // Function to toggle the completion status
    func toggleCompleted() {
        _isCompleted.toggle()
    }

    // Initializer
    init(spaceType: any SpaceType, instructions: String, usageDescription: String, subTasks: [SubTask] = [], isCompleted: Bool = false) {
        self.spaceType = SpaceTypeBox(spaceType)!
        self.instructions = instructions // Initialize instructions
        self.usageDescription = usageDescription // Initialize usageDescription
    
        self.subTasks = subTasks
        self._isCompleted = isCompleted
    }

    // Define relationships to subtasks and room
    @Relationship(inverse: \Room.spaces) var room: Room? // Establishes a many-to-one relationship with Room
}
