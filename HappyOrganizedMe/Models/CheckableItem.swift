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
    @Attribute(.unique) var id: UUID = UUID()
    var name: String = ""
    var imageName: String = ""
    var isCompleted: Bool = false
    
    @Relationship(inverse: \MiniTask.checkableItems) var miniTask: MiniTask?
    
    init(id: UUID, name: String, imageName: String, isCompleted: Bool, miniTask: MiniTask? = nil) {
        self.id = id
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
    var type: String // e.g., LivingRoom, Kitchen
    var category: String // e.g., Furniture, Appliances
}
