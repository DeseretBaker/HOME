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
    var subtasks: [Subtask] = [] // Set the list of subtasks
    var progress: Double
    var isCompleted: Bool = false
    @Relationship(inverse: \Room.spaces) var room: Room? // Assuming each space belongs to one room

    init(name: String, imageName: String? = nil,  subtasks: [Subtask] = [], progress: Double = 0.0) {
        self.name = name                    // Set the name
        self.imageName = imageName          // Set the optional imageName
        self.progress = progress            // set the progress
        self.isCompleted = isCompleted
    }
}
