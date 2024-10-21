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
    @Attribute var id: UUID = UUID() // Provide a default value for id
    @Relationship(inverse: \SubTask.miniTasks) var subTask: SubTask? // Optional relationship to SubTask
    
    @Attribute var instructions: String = "" // Default value for instructions
    @Attribute var usageDescription: String = "" // Default value for usageDescription
    
    @Attribute var miniTaskType: MiniTaskTypeBox? // No default value since it's required
    @Attribute var isCompleted: Bool = false // Default value for isCompleted

    @Attribute var checkableItems: [CheckableItem]? = [] // Default empty array for checkable items
    
    // MARK: Computed Variables (from the Displayable protocol)
    var name: String { miniTaskType?.name ?? "" }
    var imageName: String { miniTaskType?.imageName ?? "" }
    var weight: Double { miniTaskType?.weight ?? 1.0 }
    
    // Conformance to Progressable protocol
    var progress: Double {
        guard !(checkableItems?.isEmpty ?? false) else { return 0.0 }
        let completedCount = checkableItems?.filter { $0.isCompleted }.count ?? 1
        let totalCount = checkableItems?.count ?? 1
        return Double(completedCount) / Double(totalCount) * 100
    }

    // Initializer
    init(miniTaskType: MiniTaskTypeBox, instructions: String = "", usageDescription: String = "", checkableItems: [CheckableItem] = [], isCompleted: Bool = false) {
        self.miniTaskType = miniTaskType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.checkableItems = checkableItems
        self.isCompleted = isCompleted
    }
    
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
