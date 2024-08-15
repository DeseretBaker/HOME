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
    @Attribute(.unique) var id: UUID = UUID()
    var name: String
    var imageName: String?
    var subtasks: [Subtask]
    var progress: Double
    var isCompleted: Bool = false
    @Relationship(inverse: \Room.spaces) var room: Room? // Assuming each space belongs to one room

    init(name: String, imageName: String? = nil,  subtasks: [Subtask] = [], progress: Double = 0.0) {
        self.id = UUID()                    // Initialize the UUID
        self.name = name                    // Set the name
        self.imageName = imageName          // Set the optional imageName
        self.subtasks = subtasks            // Set the list of subtasks
        self.progress = progress            // set the progress
        self.isCompleted = isCompleted
    }
}
