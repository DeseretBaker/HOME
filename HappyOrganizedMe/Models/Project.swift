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
    
    // Define attributes and relationships
    @Attribute var id: UUID = UUID() // Initialized with a default UUID
    @Relationship var rooms: [Room]? = [] // Non-optional with a default empty array
    
    @Attribute var instructions: String = "" // Non-optional with a default empty string
    @Attribute var usageDescription: String = "" // Non-optional with a default empty string
    @Attribute var projectType: ProjectType? // Optional project type
    
    @Attribute var _isCompleted: Bool = false // Default value provided for completion status
    
    // Initializer
    init(projectType: ProjectType?, instructions: String = "", usageDescription: String = "", rooms: [Room] = [], isCompleted: Bool = false) {
        self.projectType = projectType
        self.instructions = instructions
        self.usageDescription = usageDescription
        self.rooms = rooms
        self._isCompleted = isCompleted
    }
    
    // MARK: Displayable Conformance
    var name: String {
        projectType?.name ?? "Coming Soon" // Safe unwrapping with fallback
    }
    
    var imageName: String {
        projectType?.imageName ?? "ComingSoon" // Fallback to default image
    }

    // MARK: Computed Variables
    var weight: Double {
        projectType?.weight ?? 1.0 // Fallback weight if projectType is nil
    }

    // Conformance to Progressable protocol
    var progress: Double {
        guard !(rooms?.isEmpty ?? true) else { return 0.0 }
        let completedRoomsSpacesSubTasksMiniTasks = rooms?.filter { $0.isCompleted }.count ?? 1
        return Double(completedRoomsSpacesSubTasksMiniTasks) / Double(rooms?.count ?? Int(1.0)) * 100 } 
    
    var isCompleted: Bool {
        get { _isCompleted }
        set { _isCompleted = newValue }
    }

    func toggleCompleted() {
        _isCompleted.toggle()
    }
}
