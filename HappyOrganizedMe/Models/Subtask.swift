//
//  Subtask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class Subtask: Identifiable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    var name: String
    var imageName: String?
    var minitasks: [Minitask] = []
    var progress: Double
    var isCompleted: Bool = false

    // Define relationship to Space
    @Relationship(inverse: \Space.subtasks) var space: Space?

    // Define relationship to RoomProject
    @Relationship var roomProjects: [RoomProject] = []

    // Initializer
    init(name: String, imageName: String? = nil, minitasks: [Minitask] = [], progress: Double = 0.0, isCompleted: Bool = false) {
        self.name = name
        self.imageName = imageName
        self.minitasks = minitasks
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
