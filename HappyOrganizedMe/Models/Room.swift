//
//  Room.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
import Foundation
import SwiftData

@Model
class Room: Identifiable, Displayable, Progressable, ObservableObject {
    var instructions: String
    var usageDescription: String
  
    var spaces: [Space] = []

    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    var roomType: RoomTypeBox // Use the RoomTypeBox enum directly, not the protocol
    private var _isCompleted: Bool = false
    // Define relationships to spaces and project
    @Relationship(inverse: \Project.rooms) var project: Project? // Establishes a many-to-one relationship with Project
    
    
    // MARK: Computed Variables
    var name: String { roomType.name }
    var imageName: String { roomType.imageName }
    var weight: Double { roomType.weight }

    // Conformance to Progressable protocol
    var progress: Double {
        guard !spaces.isEmpty else { return 0 }
        let completedSpaces = spaces.filter { $0.isCompleted }.count
        return Double(completedSpaces) / Double(spaces.count) * 100
    }

    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }

    // Initializer
    init(roomType: RoomTypeBox, instructions: String, usageDescription: String, spaces: [Space] = [], isCompleted: Bool = false) {
        self.roomType = roomType
        self.instructions = instructions  // Initialize instructions
        self.usageDescription = usageDescription  // Initialize usageDescription
      
        self.spaces = spaces
        self._isCompleted = isCompleted
    }
    
    func toggleCompleted() {
        _isCompleted.toggle()
    }


}
