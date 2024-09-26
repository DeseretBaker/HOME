//
//  Space.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
// Space.swift
import Foundation
import SwiftData

@Model
class Space: Identifiable, Displayable, Progressable, ObservableObject  {
    var instructions: String
    var usageDescription: String
    var subTasks: [SubTask]
    
    @Attribute(.unique) var id: UUID = UUID()
    var spaceType: SpaceTypeBox
    private var _isCompleted: Bool = false

    @Relationship(inverse: \Room.spaces) var room: Room?

    // Computed Properties
    var name: String { spaceType.name }
    var imageName: String { spaceType.imageName }
    var weight: Double { spaceType.weight }
    
    var progress: Double {
        guard !subTasks.isEmpty else { return 0.0 }
        let completedSubTasks = subTasks.filter { $0.isCompleted }.count
        return Double(completedSubTasks) / Double(subTasks.count) * 100
    }
    
    // Initializer
    init(spaceType: SpaceTypeBox, instructions: String, usageDescription: String, subTasks: [SubTask] = [], isCompleted: Bool = false) {
        self.spaceType = spaceType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.subTasks = subTasks
        self._isCompleted = isCompleted
        
        // Debug Print Statement
        print("Initialized Space: \(self.name) with \(subTasks.count) subtasks.")
    }
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }
    
    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
