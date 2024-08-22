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
    var id: UUID = UUID()
    var name: String
    var imageName: String?
    var minitasks: [Minitask] = []
    var progress: Double
    var isCompleted: Bool = false
    @Relationship(inverse: \Space.subtasks) var space: Space? // Relationship setup

    init(name: String, imageName: String? = nil, minitasks: [Minitask] = [], progress: Double = 0.0) {
        self.name = name
        self.imageName = imageName
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
