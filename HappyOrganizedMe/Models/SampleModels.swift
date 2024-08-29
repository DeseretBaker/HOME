//
//  SampleModels.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/4/24.
//

import Foundation
import SwiftUI
import SwiftData


struct Item: Identifiable {
    let id: UUID = UUID()
    let name: String?
}
// Sample data for testing
let sampleMiniTasks = [
//    MiniTask(name: "Paint Wall"),
//    MiniTask(name: "Install Shelves"),
    MiniTask(name: "Hang Pictures", imageName: "", miniTaskDescription: "")
]

let sampleSubTasks = [
    SubTask(name: "Prepare Room", miniTasks: sampleMiniTasks),
    SubTask(name: "Clean Space", miniTasks: sampleMiniTasks)
]

let sampleSpaces = [
    Space(name: "Living Room", roomDescription: nil, subTasks: sampleSubTasks),
    Space(name: "Kitchen", roomDescription: nil, subTasks: sampleSubTasks)
]

let sampleRoom = [
    Room.createTestRoom(name: "Main Floor", weight: 2, spaces: sampleSpaces),
    Room.createTestRoom(name: "Second Floor", weight: 2, spaces: sampleSpaces)
]

let sampleProjects = [
    RoomProject(projectType: .bathroom, rooms: []),
    RoomProject(projectType: .bedroom, rooms: [])
]
