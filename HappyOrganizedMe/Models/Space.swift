//
//  Space.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class Space: Identifiable, Displayable, Progressable, ObservableObject {
    var instructions: String
    var usageDescription: String
    var type: String
    var category: String
    var subTasks: [SubTask] = []
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var spaceTypeString: String // Store the raw value of SpaceType as a String
    private var _isCompleted: Bool = false
    
    // Computed property to get the `SpaceType` enum from the stored raw value
    var spaceType: any SpaceType {
        get {
            resolveSpaceType(from: spaceTypeString) ?? UnknownSpaceType.unknown }
        set {
            spaceTypeString = newValue.rawValue }
        }
        
        // MARK: Computed Variables
        var name: String { spaceType.name }
        var imageName: String { spaceType.imageName }
        var weight: Double { spaceType.weight }
        
        //Conformance to Progressable protocol
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
        init(spaceType: any SpaceType, instructions: String, usageDescription: String, type: String, category: String, subTasks: [SubTask] = [], isCompleted: Bool = false) {
            self.spaceTypeString = spaceType.rawValue
            self.instructions = instructions // Initialize instructions
            self.usageDescription = usageDescription // Initialize usageDescription
            self.type = type // e.g., LivingRoom, Kitchen
            self.category = category // e.g., Furniture, Appliances
            self.subTasks = subTasks
            self._isCompleted = isCompleted
        }
        
        // Define relationships to subtasks and room
        @Relationship(inverse: \Room.spaces) var room: Room? // Establishes a many-to-one relationship with Room
        
    }
