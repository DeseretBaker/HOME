//
//  Minitask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class Minitask: Identifiable, ObservableObject {
    var id: UUID = UUID()
    var name: String
    var imageName: String?
    var isCompleted: Bool
    var progress: Double
    @Relationship(inverse: \Subtask.minitasks) var subtask: Subtask? // Relationship setup

    init(name: String, imageName: String? = nil, isCompleted: Bool = false, progress: Double = 0.0) {
        self.name = name
        self.imageName = imageName
        self.isCompleted = isCompleted
        self.progress = progress
    }
}
