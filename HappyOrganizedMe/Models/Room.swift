//
//  Room.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import Foundation
import SwiftData

@Model
class Room: Identifiable {
    @Attribute(.unique) var id: UUID = UUID() // Ensures each room has a unique id
    var name: String
    var imageName: String?
    var weight: Double
    var isCompleted: Bool = false
    
    // Define the optional inverse relationship manually if needed, or omit it entirely
    weak var project: RoomProject?  // Use a weak reference to avoid strong reference cycles
    
    var spaces: [Space] = []
    
    // Define other properties and initializers
    init(name: String, imageName: String? = nil, weight: Double, spaces: [Space] = [], project: RoomProject? = nil) {
        self.name = name
        self.imageName = imageName
        self.weight = weight
        self.spaces = spaces
        self.project = project
    }
}
