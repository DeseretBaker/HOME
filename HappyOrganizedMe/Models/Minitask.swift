//
//  MiniTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class MiniTask: Identifiable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    
    var name: String
    var imageName: String?
    var roomDescription: String?
    var weight: Double = 0.0
    var isCompleted: Bool
    var progress: Double

    // Define relationship to SubTask
    var subTask: SubTask? // a miniTask belongs to a subTask

   
    // Initializer
    init(name: String, imageName: String? = nil, roomDescription: String? = nil, weight: Double = 0.0, isCompleted: Bool = false, progress: Double = 0.0) {
        self.name = name
        self.imageName = imageName
        self.roomDescription = roomDescription
        self.weight = weight
        self.isCompleted = isCompleted
        self.progress = progress
    }
}
