//
//  Space.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class Space: Identifiable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Initialize the UUID
    var name: String
    var imageName: String?
    var subtasks: [Subtask] = [] // List of subtasks
    var progress: Double
    var isCompleted: Bool = false

    // Define a relationship to Room
    @Relationship(inverse: \Room.spaces) var room: Room?

    // Relationships with other models
    @Relationship var roomProjects: [RoomProject] = []

    // Initializer
    init(name: String, imageName: String? = nil, subtasks: [Subtask] = [], progress: Double = 0.0, isCompleted: Bool = false, room: Room? = nil) {
        self.name = name                    // Set the name
        self.imageName = imageName          // Set the optional imageName
        self.subtasks = subtasks            // Initialize subtasks
        self.progress = progress            // Set the progress
        self.isCompleted = isCompleted      // Set completion status
        self.room = room                    // Set the room
    }
}
