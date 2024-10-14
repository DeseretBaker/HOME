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
    @Attribute(.unique) var id: UUID = UUID()
    @Relationship(inverse: \Room.spaces) var room: Room?
    var instructions: String
    var usageDescription: String
    var subTasks: [SubTask]
    
    
    var spaceType: SpaceTypeBox
    @Attribute var isCompleted: Bool = false

   

    // Computed Properties
    var name: String { spaceType.name }
    var imageName: String { spaceType.imageName }
    var weight: Double { spaceType.weight }
    
    var progress: Double {
        let allMiniTasks = subTasks.flatMap(\.miniTasks)
        
        guard !allMiniTasks.isEmpty else { return 0.0 }
        let completedMiniTasks = allMiniTasks.filter { $0.isCompleted }.count
        return Double(completedMiniTasks) / Double(allMiniTasks.count) * 100
        
    }
    
    // Initializer
    init(spaceType: SpaceTypeBox, instructions: String, usageDescription: String, subTasks: [SubTask] = [], isCompleted: Bool = false) {
        self.spaceType = spaceType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.isCompleted = isCompleted
        self.subTasks = subTasks
        
        for subTask in self.subTasks {
            subTask.space = self
        }
        // Debug Print Statement
        print("Initialized Space: \(self.name) with \(subTasks.count) subtasks.")
    }
    
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
