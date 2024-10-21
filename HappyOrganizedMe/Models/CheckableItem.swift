//
//  CheckableItem.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/9/24.
//

import Foundation
import SwiftData

@Model
class CheckableItem: Identifiable {
    @Attribute var id: UUID = UUID() // Provide a default value for id
    @Relationship(inverse: \MiniTask.checkableItems) var miniTask: MiniTask? // Optional relationship to MiniTask

    @Attribute var name: String = "" // Default value for name
    @Attribute var imageName: String = "" // Default value for image name
    @Attribute var isCompleted: Bool = false // Default value for isCompleted

    // Initializer
    init(name: String = "", imageName: String = "", isCompleted: Bool = false, miniTask: MiniTask? = nil) {
        self.name = name
        self.imageName = imageName
        self.isCompleted = isCompleted
        self.miniTask = miniTask
    }
}
struct Item: Displayable, Identifiable {
    var id = UUID() // Conforming to Identifiable
    var name: String
    var imageName: String
    var instructions: String
    var usageDescription: String
    var progress: Double
    var isCompleted: Bool
    
    // Initializer for `Item` with default values for flexibility
    init(name: String = "", imageName: String = "", instructions: String = "", usageDescription: String = "", progress: Double = 0.0, isCompleted: Bool = false) {
        self.name = name
        self.imageName = imageName
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
