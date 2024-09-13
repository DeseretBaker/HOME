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
    
    
    @Attribute var miniTaskTypeString: String // Store the raw value of the task type
    private var _isCompleted: Bool = false
    @Attribute var checkableItems: [CheckableItem] = []
    
    // Define relationship to SubTask
    @Relationship(inverse: \SubTask.miniTasks) var subTask: SubTask?

    // computed property for miniTaskType
    var miniTaskType: any MiniTaskType {
        get {
            resolveMiniTaskType(from: miniTaskTypeString) ?? UnknownMiniTaskType.unknown }  // Provide a default case if necessary
        set {
            miniTaskTypeString = newValue.rawValue }
    }

    // MARK: Computed Variables
    var name: String { miniTaskType.name }
    var imageName: String { miniTaskType.imageName }
    var weight: Double { miniTaskType.weight }
    var instructions: String { miniTaskType.instructions }
 
    // conformance to Progressable protocol
    var progress: Double {
        guard !checkableItems.isEmpty else { return 0 }
        let completedCount = checkableItems.count
        let totalCount = checkableItems.count
        return Double(completedCount) / Double(totalCount) * 100
    }
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(miniTaskType: any MiniTaskType, usageDescription: String, type: String, category: String, isCompleted: Bool = false) {
        self.miniTaskTypeString = miniTaskType.rawValue
        
        self.usageDescription = usageDescription
        self.type = type // e.g., LivingRoom, Kitchen
        self.category = category // e.g., Furniture, Appliances
        self._isCompleted = isCompleted
    }
    
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
