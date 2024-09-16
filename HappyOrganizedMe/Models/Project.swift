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
    @Attribute var projectType: ProjectType // Use the enum directly, SwiftData handles the raw value
    private var _isCompleted: Bool = false

    // MARK: Computed Variables
    var name: String { projectType.name }
    var imageName: String { projectType.imageName }
    var weight: Double { projectType.weight }

    // Conformance to Progressable protocol
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
        self.projectType = projectType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.type = type // e.g., LivingRoom, Kitchen
        self.category = category // e.g., Furniture, Appliances
        self.rooms = rooms
        self._isCompleted = isCompleted
    }
}
