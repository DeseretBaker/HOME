//
//  Project.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable, Displayable {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var projectTypeString: String // Store the raw value of ProjectType as a String

    // Computed property to get the `ProjectType` enum from the stored raw value
    var projectType: ProjectType {
        get {
            resolveProjectType(from: projectTypeString) ?? .kitchen  // Use helper function to resolve type
        }
        set {
            projectTypeString = newValue.rawValue
        }
    }

    // Define relationships to rooms
    var rooms: [Room] = [] // One-to-many relationship with Room

    // MARK: Computed Variables
    var name: String { projectType.name }
    var imageName: String { projectType.imageName }
    var weight: Double { projectType.weight }
    
    var progress: Double {
        guard !rooms.isEmpty else { return 0 }
        let completedRooms = rooms.filter { $0.isCompleted }.count
        return Double(completedRooms) / Double(rooms.count) * 100
    }

    private var _isCompleted: Bool = false
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }

    // Initializer
    init(projectType: ProjectType, rooms: [Room] = [], isCompleted: Bool = false) {
        self.projectTypeString = projectType.rawValue
        self.rooms = rooms
        self._isCompleted = isCompleted
    }

    func toggleCompleted() {
        _isCompleted.toggle()
    }
}

