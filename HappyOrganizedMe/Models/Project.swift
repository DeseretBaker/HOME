//
//  Project.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable, Displayable, Progressable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID() // Ensure unique identifier
    @Relationship var rooms: [Room] = []
    
    var instructions: String
    var usageDescription: String
   
    
   
    var projectType: ProjectType // Use the enum directly, SwiftData handles the raw value
    @Attribute var _isCompleted: Bool = false
    
    // Initializer
    init(projectType: ProjectType, instructions: String = "", usageDescription: String = "", rooms: [Room] = [], isCompleted: Bool = false) {
        self.projectType = projectType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.rooms = rooms
        self._isCompleted = isCompleted
    }
    
    // MARK: Computed Variables
    var name: String { projectType.name }
    var imageName: String { projectType.imageName }
    var weight: Double { projectType.weight }

    // Conformance to Progressable protocol
    var progress: Double {
        let allRoomsSpacesSubTasksMiniTasks = rooms.flatMap(\.spaces).flatMap(\.subTasks).flatMap(\.miniTasks)
     
        guard !allRoomsSpacesSubTasksMiniTasks.isEmpty else { return 0.0 }
        let completedRoomsSpacesSubTasksMiniTasks = allRoomsSpacesSubTasksMiniTasks.filter { $0.isCompleted }.count
        return Double(completedRoomsSpacesSubTasksMiniTasks) / Double(allRoomsSpacesSubTasksMiniTasks.count) * 100
    }
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }

    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
