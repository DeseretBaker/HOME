//
//  MiniTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import Foundation
import SwiftData
import SwiftUI

@Model
class MiniTask: Identifiable, Displayable, Progressable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    // Define relationship to SubTask
    @Relationship(inverse: \SubTask.miniTasks) var subTask: SubTask?
    
    var instructions: String
    var usageDescription: String
    
   
    var miniTaskType: MiniTaskTypeBox // Use the enum directly
    @Attribute var isCompleted: Bool = false

    var checkableItems: [CheckableItem] = []
    
   

    // MARK: Computed Variables
    var name: String { miniTaskType.name }
    var imageName: String { miniTaskType.imageName }
    var weight: Double { miniTaskType.weight }
    

    // Conformance to Progressable protocol
    var progress: Double {
        guard !checkableItems.isEmpty else { return 0.0 }
        let completedCount = checkableItems.filter { $0.isCompleted }.count
        let totalCount = checkableItems.count
        return Double(completedCount) / Double(totalCount) * 100
    }

    // Initializer
    init(miniTaskType: MiniTaskTypeBox, instructions: String, usageDescription: String, isCompleted: Bool = false) {
        self.miniTaskType = miniTaskType
        self.instructions = instructions
        self.usageDescription = usageDescription
     
        self.isCompleted = isCompleted
    }
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
