//
//  SubTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

// TODO: Fix @Observable or ObservableObject to work with @Model objects.
@Model
class SubTask: Identifiable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    var name: String
    var imageName: String?
    var roomDescription: String?
    var weight: Double = 0.0
    var progress: Double
    var isCompleted: Bool = false

    // Define relationship to Space
    var space: Space? // A subTask belongs to a space
    @Relationship(inverse: \MiniTask.subTask) var miniTasks: [MiniTask] = [] // A subTask has many miniTasks

    

    // Initializer
    init(name: String, imageName: String? = nil, miniTasks: [MiniTask] = [], progress: Double = 0.0, isCompleted: Bool = false) {
        self.name = name
        self.imageName = imageName
        // TODO: Add these to the initializer as parameters and then update call sites.
//        self.roomDescription = roomDescription
//        self.weight = weight
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
