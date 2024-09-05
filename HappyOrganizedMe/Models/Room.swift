//
//  Room.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
import Foundation
import SwiftData

@Model
class Room: Identifiable, Displayable {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var roomTypeString: String // Store the raw value of RoomType as a String
    
    var roomType: any RoomType {
        get {
            resolveRoomType(from: roomTypeString) ?? UnknownRoomType.unknown
        }
        set {
            roomTypeString = newValue.rawValue
        }
    }
    
    // Define relationships to spaces and project
    var spaces: [Space] = [] // One-to-many relationship with Space
    @Relationship(inverse: \Project.rooms) var project: Project? // Establishes a many-to-one relationship with Project
    
    // MARK: Computed Variables
    var name: String { roomType.name }
    var imageName: String { roomType.imageName }
    var weight: Double { roomType.weight }
    
    var progress: Double {
        guard !spaces.isEmpty else { return 0 }
        let completedSpaces = spaces.filter { $0.isCompleted }
        return Double(completedSpaces.count) / Double(spaces.count) * 100
    }
    
    private var _isCompleted: Bool = false
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(roomType: any RoomType, spaces: [Space], project: Project? = nil, isCompleted: Bool = false) {
        self.roomTypeString = roomType.rawValue
        self.spaces = spaces
        self.project = project
        self._isCompleted = isCompleted
    }

    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
