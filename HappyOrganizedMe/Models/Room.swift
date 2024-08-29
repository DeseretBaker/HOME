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
    
    var project: RoomProject // A room belongs to a project
    @Relationship(inverse: \Space.room) var spaces: [Space] = [] // A room has many spaces
    
  

    // Initializer
    init(name: String, imageName: String? = nil, roomDescription: String? = nil, weight: Double, spaces: [Space] = [], project: RoomProject, progress: Double = 0.0) {
        self.name = name
        self.imageName = imageName
        self.roomDescription = roomDescription
        self.weight = weight
        self.progress = progress
        self.project = project
    }
    
    static func createTestRoom(name: String, imageName: String? = nil, roomDescription: String? = nil, weight: Double, spaces: [Space] = [], progress: Double = 0.0) -> Room {
        let project = RoomProject.init(projectType: .kitchen, rooms: [])
        let room = Room.init(name: name, imageName: imageName, roomDescription: roomDescription, weight: weight, spaces: spaces, project: project, progress: progress)
        project.rooms.append(room)
        return room
    }
}
