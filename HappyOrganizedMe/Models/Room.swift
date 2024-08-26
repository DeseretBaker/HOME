//
//  Room.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
import Foundation
import SwiftData

@Model
class Room: Identifiable {
    @Attribute(.unique) var id: UUID = UUID() // Unique identifier for each Room
    var name: String
    var imageName: String?
    var roomDescription: String?
    var weight: Double
    var isCompleted: Bool = false
    var progress: Double = 0.0
    
    @Relationship(inverse: \RoomProject.rooms) var project: RoomProject? // A room belongs to a project
    @Relationship(inverse: \Space.room) var spaces: [Space] = [] // A room has many spaces
    
  

    // Initializer
    init(name: String, imageName: String? = nil, roomDescription: String? = nil, weight: Double, spaces: [Space] = [], project: RoomProject? = nil, progress: Double = 0.0) {
        self.name = name
        self.imageName = imageName
        self.roomDescription = roomDescription
        self.weight = weight
        self.progress = progress
    }
}
