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
    MiniTask(name: "Paint Wall"),
    MiniTask(name: "Install Shelves"),
    MiniTask(name: "Hang Pictures")
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
    Room(name: "Main Floor", weight: 2, spaces: sampleSpaces),
    Room(name: "Second Floor", weight: 2, spaces: sampleSpaces)
]

let sampleProjects = [
    RoomProject(name: "Home Renovation", imageName: "home_renovation", rooms: []),
    RoomProject(name: "Office Setup", imageName: "office_setup", rooms: [])
]
