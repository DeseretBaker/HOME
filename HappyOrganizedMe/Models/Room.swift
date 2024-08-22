//
//  Room.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//
import Foundation
import SwiftData

@Model
class Room: Identifiable, ObservableObject {
    @Attribute(.unique) var id: UUID = UUID()
    var name: String
    var imageName: String?
    var spaces: [Space] = []
    var weight: Double = 1.0
    var progress: Double
    var isCompleted: Bool = false
    @Relationship(inverse: \RoomProject.rooms) var project: RoomProject?

    init(name: String, imageName: String? = nil, weight: Double, progress: Double = 0.0, spaces: [Space] = []) {
        self.name = name
        self.imageName = imageName
        self.progress = progress
        self.isCompleted = isCompleted
        
        
    }
}
