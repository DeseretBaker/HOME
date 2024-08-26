//
//  RoomProject.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//

import Foundation
import SwiftData

@Model
class RoomProject: Identifiable {
    @Attribute(.unique) var id: UUID = UUID() // Ensures each project has a unique id
    var name: String
    var imageName: String?
    var roomDescription: String?
    var weight: Double = 0.0
    var progress: Double = 0.0
    var isCompleted: Bool = false
    
    // Define relationship with Room
    @Relationship(inverse: \Room.project) var rooms: [Room] = [] // A project has many rooms
    
    
   
    // Initializer
    init(name: String, imageName: String? = nil) {
        self.name = name
        self.imageName = imageName
        self.roomDescription = roomDescription
        self.weight = weight
        self.progress = calculateProgress()
        self.isCompleted = checkIfCompleted()
    }
    
    
    // Method to update project status
    func updateProjectStatus() {
        self.progress = calculateProgress()
        self.isCompleted = checkIfCompleted()
    }
    
    // Update the status of a specific room
    func updateRoomStatus(roomId: UUID, isCompleted: Bool) {
        if let roomIndex = rooms.firstIndex(where: { $0.id == roomId }) {
            rooms[roomIndex].isCompleted = isCompleted
            updateProjectStatus() // Recalculates the project status
        }
    }
    
    // Add a new room, this will be a custom room entered by the user
    func addRoom(_ newRoom: Room) {
        rooms.append(newRoom)
        updateProjectStatus()
    }
    
    // Calculate project progress as a percentage of completed room weights
    private func calculateProgress() -> Double {
        guard !rooms.isEmpty else { return 0.0 }
        
        let totalWeight = rooms.reduce(0.0) { $0 + $1.weight }
        let completedWeight = rooms.reduce(0.0) { $0 + ($1.isCompleted ? $1.weight : 0.0) }
        return (completedWeight / totalWeight) * 100.0
    }
    
    // Check if all rooms are completed
    private func checkIfCompleted() -> Bool {
        return rooms.allSatisfy { $0.isCompleted }
    }
}
