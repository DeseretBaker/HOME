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
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    var name: String
    var imageName: String?
    var isCompleted: Bool
    var progress: Double

    // Define relationship to Subtask
    @Relationship(inverse: \Subtask.minitasks) var subtask: Subtask?

   
    // Initializer
    init(name: String, imageName: String? = nil, isCompleted: Bool = false, progress: Double = 0.0) {
        self.name = name
        self.imageName = imageName
        self.isCompleted = isCompleted
        self.progress = progress
    }
}
