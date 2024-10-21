//
//  SubTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import Foundation
import SwiftData

@Model
class SubTask: Identifiable, Displayable, Progressable, ObservableObject {
    @Attribute var id: UUID = UUID() // Ensure UUID has a default value
    @Relationship(inverse: \Space.subTasks) var space: Space? // Optional relationship to Space
    
    @Attribute var instructions: String = "" // Ensure instructions have a default value
    @Attribute var usageDescription: String = "" // Ensure usageDescription has a default value
    @Relationship var miniTasks: [MiniTask]? = [] // Default to an empty array for miniTasks
    
    @Attribute var subTaskType: SubTaskTypeBox? // No default value, as it should be required
    @Attribute var isCompleted: Bool = false // Default value for isCompleted

    // MARK: Computed Variables (from the Displayable protocol)
    var name: String { subTaskType?.name ?? "" } // Use from the SubTaskTypeBox enum
    var imageName: String { subTaskType?.imageName ?? "" } // Use from the SubTaskTypeBox enum
    var weight: Double { subTaskType?.weight ?? 1.0 } // Use from the SubTaskTypeBox enum
    
    // Conformance to Progressable protocol
    var progress: Double {
        guard !(miniTasks?.isEmpty ?? true) else { return 0.0 }
        let completedMiniTasks = miniTasks?.filter { $0.isCompleted }.count ?? 1
        return Double(completedMiniTasks) / Double(miniTasks?.count ?? Int(1.0)) * 100
    }
 
    // Initializer
    init(subTaskType: SubTaskTypeBox, instructions: String = "", usageDescription: String = "", miniTasks: [MiniTask] = [], isCompleted: Bool = false) {
        self.subTaskType = subTaskType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.miniTasks = miniTasks
        self.isCompleted = isCompleted
    }

    // Method to toggle the completion status
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
