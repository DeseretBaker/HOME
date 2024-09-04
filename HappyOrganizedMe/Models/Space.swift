//
//  Space.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class Space: Identifiable, Displayable {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var spaceTypeString: String // Store the raw value of SpaceType as a String
    
    // Computed property to get the `SpaceType` enum from the stored raw value
    var spaceType: SpaceType {
        get {
            resolveSpaceType(from: spaceTypeString) ?? UnknownSpaceType.unknown
        }
        set {
            spaceTypeString = newValue.rawValue
        }
    }
    
    // Define relationships to subtasks and room
    var subTasks: [SubTask] = [] // One-to-many relationship with SubTask
    @Relationship(inverse: \Room.spaces) var room: Room? // Establishes a many-to-one relationship with Room
    
    // MARK: Computed Variables
    var name: String { spaceType.name }
    var imageName: String { spaceType.imageName }
    var weight: Double { spaceType.weight }
    
    var progress: Double {
        guard !subTasks.isEmpty else { return 0.0 }
        let completedSubTasks = subTasks.filter { $0.isCompleted }.count
        return Double(completedSubTasks) / Double(subTasks.count) * 100
    }
    
    private var _isCompleted: Bool = false
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(spaceType: SpaceType, subTasks: [SubTask], room: Room? = nil, isCompleted: Bool = false) {
        self.spaceTypeString = spaceType.rawValue
        self.room = room
        self.subTasks = subTasks
        self._isCompleted = isCompleted
    }
    
    // Function to toggle the completion status
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}

