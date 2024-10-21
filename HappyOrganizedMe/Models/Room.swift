//
//  Room.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
// Room.swift
import Foundation
import SwiftData

@Model
class Room: Identifiable, Displayable, Progressable, ObservableObject {
    @Attribute var id: UUID = UUID() // UUID should have a default value
    
    // Define relationships to spaces and project
    @Relationship(inverse: \Project.rooms) var project: Project? // Optional relationship to Project
    @Relationship var spaces: [Space]? = [] // Relationship to spaces (default to empty array)

    @Attribute var instructions: String = "" // Mark as @Attribute and provide a default value
    @Attribute var usageDescription: String = "" // Provide a default value
    
    // Use the RoomTypeBox enum directly, not the protocol
    @Attribute var roomType: RoomTypeBox?
    @Attribute var isCompleted: Bool = false // Default to false
    
    // MARK: Computed Variables
    var name: String { roomType?.name ?? "" } // From Displayable
    var imageName: String { roomType?.imageName ?? "" } // From Displayable
    var weight: Double { roomType?.weight ?? 1.0 }
    // From Progressable
    
    var progress: Double { // From Progressable
        guard !(spaces?.isEmpty ?? true) else { return 0.0 }
        let completedSpacesSubTasksMiniTasks = spaces?.filter { $0.isCompleted }.count ?? 1
        return Double(completedSpacesSubTasksMiniTasks) / Double(spaces?.count ?? Int(1.0)) * 100
    }
    
    // Initializer
    init(roomType: RoomTypeBox, instructions: String = "", usageDescription: String = "", spaces: [Space] = [], isCompleted: Bool = false) {
        self.roomType = roomType
        self.instructions = instructions // Initialize instructions
        self.usageDescription = usageDescription // Initialize usageDescription
        self.isCompleted = isCompleted
        self.spaces = spaces   
    }
   
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
