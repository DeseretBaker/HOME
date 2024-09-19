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
    
    var usageDescription: String
    var type: String
    var category: String
    
    var miniTaskType: MiniTaskTypeBox // Use the enum directly
    private var _isCompleted: Bool = false
    var checkableItems: [CheckableItem] = []
    
    // Define relationship to SubTask
    @Relationship(inverse: \SubTask.miniTasks) var subTask: SubTask?

    // MARK: Computed Variables
    var name: String { miniTaskType.name }
    var imageName: String { miniTaskType.imageName }
    var weight: Double { miniTaskType.weight }
    var instructions: String { miniTaskType.instructions }

    // Conformance to Progressable protocol
    var progress: Double {
        guard !checkableItems.isEmpty else { return 0 }
        let completedCount = checkableItems.filter { $0.isCompleted }.count
        let totalCount = checkableItems.count
        return Double(completedCount) / Double(totalCount) * 100
    }

    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(miniTaskType: MiniTaskTypeBox, usageDescription: String, type: String, category: String, isCompleted: Bool = false) {
        self.miniTaskType = miniTaskType
        self.usageDescription = usageDescription
        self.type = type // e.g., LivingRoom, Kitchen
        self.category = category // e.g., Furniture, Appliances
        self._isCompleted = isCompleted
    }
    
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
