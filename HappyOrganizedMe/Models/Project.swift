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
    @Attribute(.unique) var id: UUID = UUID()
    var name: String
    var imageName: String?
    var rooms: [Room] = []
    var progress: Double  // Assuming progress is a Double
    var isCompleted: Bool = false

    init(name: String, imageName: String?, rooms: [Room] = [], progress: Double = 0.0) {
        self.id = UUID()
        self.name = name
        self.imageName = imageName
        self.rooms = rooms
        self.progress = progress  // Initialize progress here
        self.isCompleted = isCompleted
    }
}
