//
//  Project.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//
import Foundation
import SwiftData

@Model
class Project: Identifiable {
    @Attribute(.unique) var id: UUID = UUID() // ensures each project has a unique id
    var name: String
    var imageName: String?
    var rooms: [Room] = []
    var progress: Double  = 0.0
    var isCompleted: Bool = false
    
    // initializer
    init(name: String, imageName: String? = nil, rooms: [Room] = []) {
        self.name = name
        self.imageName = imageName
        self.rooms = rooms
        self.progress = calculateProgress()
        self.isCompleted = checkIfCompleted()
    }
    
    // method to update project
    func updateProjectStatus() {
        self.progress = calculateProgress()
        self.isCompleted = checkIfCompleted()
    }
    // update the status of a specific room
    func updateRoomStatus(roomId: UUID, isCompleted: Bool) {
        if let roomIndex = rooms.firstIndex(where: { $0.id == roomId }) {
            rooms[roomIndex].isCompleted = isCompleted
            updateProjectStatus() // recalculates the project status
        }
    }
    
    // add a new room
    func addRoom(_ newRoom: Room) {
        rooms.append(newRoom)
        updateProjectStatus()
    }
    
    // calculate project progress as a percentage of completed room weights
    private func calculateProgress() -> Double {
        guard !rooms.isEmpty else { return 0.0 }
        
        let totalWeight = rooms.reduce(0.0) { $0 + $1.weight }
        let completedWeight = rooms.reduce(0.0) { $0 + ($1.isCompleted ? $1.weight : 0.0) }
        return (completedWeight / totalWeight) * 100.0
    }
    
    // check if all rooms are completed
    private func checkIfCompleted() -> Bool {
        return rooms.allSatisfy { $0.isCompleted }
    }
}
