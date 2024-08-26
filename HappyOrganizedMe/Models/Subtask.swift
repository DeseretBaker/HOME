//
//  Subtask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class SubTask: Identifiable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Published var miniTasks: [MiniTask]
    var name: String
    var imageName: String?
    var roomDescription: String?
    var weight: Double = 0.0
    var progress: Double
    var isCompleted: Bool = false

    // Define relationship to Space
    @Relationship(inverse: \Space.subTasks) var space: Space? // A subTask belongs to a space
    @Relationship(inverse: \MiniTask.subTask) var miniTasks: [Minitask] = [] // A subTask has many miniTasks

    

    // Initializer
    init(name: String, imageName: String? = nil, miniTasks: [MiniTask] = [], progress: Double = 0.0, isCompleted: Bool = false) {
        self.name = name
        self.imageName = imageName
        self.roomDescription = roomDescription
        self.weight = weight
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
