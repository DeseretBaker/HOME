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
    var type: String
    var category: String
    var spaces: [Space] = []
    
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var roomTypeString: String // Store the raw value of ProjectType as a String
    private var _isCompleted: Bool = false
    
    // Computed property to get the `RoomType` enum from the stored raw value
    var roomType: any RoomType {
        get {
            resolveRoomType(from: roomTypeString) ?? UnknownRoomType.unknown }
        set {
            roomTypeString = newValue.rawValue }
    }
    
    // MARK: Computed Variables
    var name: String { roomType.name }
    var imageName: String { roomType.imageName }
    var weight: Double { roomType.weight }
    
    // conformance to Progressable protocol
    var progress: Double {
        guard !spaces.isEmpty else { return 0 }
        let completedSpaces = spaces.filter { $0.isCompleted }.count
        return Double(completedSpaces) / Double(spaces.count) * 100
    }
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    func toggleCompleted() {
        _isCompleted.toggle()
    }
    // Initializer
    init(roomType: any RoomType, instructions: String, usageDescription: String, type: String, category: String, spaces: [Space] = [], isCompleted: Bool = false) {
        self.roomTypeString = roomType.rawValue
        self.instructions = instructions  // Initialize instructions
        self.usageDescription = usageDescription  // Initialize usageDescription
        self.type = type  // e.g., LivingRoom, Kitchen
        self.category = category // e.g., Furniture, Appliances
        self.spaces = spaces
        self._isCompleted = isCompleted
    }
    
    //Define relationships to spaces and project
    @Relationship(inverse: \Project.rooms) var project: Project? // Establishes a many-to-one relationship with Project
}
