//
//  Project.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable, Displayable, Progressable, ObservableObject {
    var instructions: String
    var usageDescription: String
    var type: String
    var category: String
    var rooms: [Room] = []
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var projectTypeString: String // Store the raw value of ProjectType as a String
    private var _isCompleted: Bool = false
    
    // Computed property to get the `ProjectType` enum from the stored raw value
    var projectType: ProjectType {
        get { resolveProjectType(from: projectTypeString) ?? .unknown } // Use the `unknown` case of ProjectT
        set { projectTypeString = newValue.rawValue }
    }

    // MARK: Computed Variables
    var name: String { projectType.name }
    var imageName: String { projectType.imageName }
    var weight: Double { projectType.weight }

    // conformance to Progressable protocol
    var progress: Double {
        guard !rooms.isEmpty else { return 0 }
        let completedRooms = rooms.filter { $0.isCompleted }.count
        return Double(completedRooms) / Double(rooms.count) * 100
    }
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    func toggleCompleted() {
        _isCompleted.toggle()
    }
    // Initializer
    init(projectType: ProjectType, instructions: String, usageDescription: String, type: String, category: String, rooms: [Room] = [], isCompleted: Bool = false) {
        self.projectTypeString = projectType.rawValue
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.type = type // e.g., LivingRoom, Kitchen
        self.category = category // e.g., Furniture, Appliances
        self.rooms = rooms
        self._isCompleted = isCompleted
    }
}
