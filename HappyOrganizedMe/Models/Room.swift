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
    @Attribute(.unique) var id: UUID = UUID()
    // Define relationships to spaces and project
    @Relationship(inverse: \Project.rooms) var project: Project? // Establishes a many-to-one relationship with Project
    
    var instructions: String
    var usageDescription: String
    var spaces: [Space]
    
   
    var roomType: RoomTypeBox
    // Use the RoomTypeBox enum directly, not the protocol
    @Attribute var isCompleted: Bool = false
    
   
    
    
    // MARK: Computed Variables
    var name: String { roomType.name }
    var imageName: String { roomType.imageName }
    var weight: Double { roomType.weight }
    
    
    var progress: Double {
        let allSpacesSubTasksMiniTasks: [MiniTask] = spaces.flatMap(\.subTasks).flatMap(\.miniTasks)
        
        guard !allSpacesSubTasksMiniTasks.isEmpty else { return 0.0 }
        let completedSpacesSubTasksMiniTasks = allSpacesSubTasksMiniTasks.filter { $0.isCompleted }.count
        return Double(completedSpacesSubTasksMiniTasks) / Double(allSpacesSubTasksMiniTasks.count) * 100
    }
    
    // Initializer
    init(roomType: RoomTypeBox, instructions: String, usageDescription: String, spaces: [Space] = [], isCompleted: Bool = false) {
        self.roomType = roomType
        self.instructions = instructions  // Initialize instructions
        self.usageDescription = usageDescription  // Initialize usageDescription
        self.isCompleted = isCompleted
        self.spaces = spaces
        
        // Set the back reference from each space to this room
        for space in self.spaces {
            space.room = self
        }
        
        // Debug Print Statement
        print("Initialized Room: \(self.name) with \(spaces.count) spaces.")
    }
   
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
