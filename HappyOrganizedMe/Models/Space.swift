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
    @Attribute var id: UUID = UUID() // Ensure UUID has a default value
    @Relationship(inverse: \Room.spaces) var room: Room? // Optional relationship to Room
    
    @Attribute var instructions: String = "" // Ensure it's an attribute with a default value
    @Attribute var usageDescription: String = "" // Ensure it's an attribute with a default value
    @Relationship var subTasks: [SubTask]? = [] // Default to an empty array

    @Attribute var spaceType: SpaceTypeBox?
    @Attribute var isCompleted: Bool = false

    // Computed Properties
    var name: String { spaceType?.name ?? "" } // From Displayable
    var imageName: String { spaceType?.imageName ?? "" } // From Displayable
    var weight: Double { spaceType?.weight ?? 1.0 } // From Progressable
    
    var progress: Double { // From Progressable
        guard !(subTasks?.isEmpty ?? true) else { return 0.0 }
        let completedSubTasksMiniTasks = subTasks?.filter { $0.isCompleted }.count ?? 1
        return Double(completedSubTasksMiniTasks) / Double(subTasks?.count ?? Int(1.0)) * 100
    }
    
    // Initializer
    init(spaceType: SpaceTypeBox, instructions: String = "", usageDescription: String = "", subTasks: [SubTask] = [], isCompleted: Bool = false) {
        self.spaceType = spaceType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.subTasks = subTasks
        self.isCompleted = isCompleted
        }
    
    func toggleCompleted() {
        isCompleted.toggle()
    }
}
