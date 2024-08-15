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
    var id: UUID = UUID()
    var name: String
    var imageName: String?
    var spaces: [Space]
    var progress: Double
    var isCompleted: Bool = false
    @Relationship(inverse: \Project.rooms) var project: Project?

    init(name: String, imageName: String? = nil, progress: Double = 0.0, spaces: [Space] = []) {
        self.id = UUID()
        self.name = name
        self.imageName = imageName
        self.spaces = spaces
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
