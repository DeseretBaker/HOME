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
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    var projectType: ProjectType // Use the enum directly, SwiftData handles the raw value
    var instructions: String
    var usageDescription: String
    var rooms: [Room]
    
    private var _isCompleted: Bool = false
    
    // Initializer
    init(projectType: ProjectType, instructions: String = "", usageDescription: String = "", rooms: [Room] = []) {
        self.projectType = projectType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.rooms = rooms
    }
    
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
}
