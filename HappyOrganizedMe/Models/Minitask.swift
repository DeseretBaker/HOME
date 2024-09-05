//
//  MiniTask.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class MiniTask: Identifiable, Displayable {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Attribute var miniTaskTypeString: String // Store the raw value of the task type

    // Computed property to get the `MiniTaskType` enum from the stored raw value
    var miniTaskType: any MiniTaskType {
        get {
            resolveMiniTaskType(from: miniTaskTypeString) ?? UnknownMiniTaskType.unknown
        }
        set {
            miniTaskTypeString = newValue.rawValue
        }
    }

    // Define relationship to SubTask
    @Relationship(inverse: \SubTask.miniTasks) var subTask: SubTask?

    // MARK: Computed Variables
    var name: String { miniTaskType.name }
    var imageName: String { miniTaskType.imageName }
    var weight: Double { miniTaskType.weight }
    var progress: Double { Double(subTask?.progress ?? 0) }
    
    private var _isCompleted: Bool = false
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    // Initializer
    init(miniTaskType: any MiniTaskType, isCompleted: Bool = false) {
        self.miniTaskTypeString = miniTaskType.rawValue
        self._isCompleted = isCompleted
    }
    
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}

