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
    var roomDescription: String?
    var weight: Double
    var progress: Double
    var isCompleted: Bool = false

    // Define a relationship to Room
    var room: Room? // A space belongs to a room
    @Relationship(inverse: \SubTask.space) var subTasks: [SubTask] = [] // A space has many subTasks

    
   

    // Initializer
    init(name: String, imageName: String? = nil, roomDescription: String?, weight: Double = 0.0, progress: Double = 0.0, isCompleted: Bool = false, subTasks: [SubTask]) {
        self.name = name                    // Set the name
        self.imageName = imageName          // Set the optional imageName
        self.roomDescription = roomDescription
        self.weight = weight
        self.progress = progress            // Set the progress
        self.isCompleted = isCompleted      // Set completion status
        self.subTasks = subTasks
    }
}
