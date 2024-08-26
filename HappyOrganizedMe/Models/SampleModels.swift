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
let sampleMinitasks = [
    Minitask(name: "Paint Wall"),
    Minitask(name: "Install Shelves"),
    Minitask(name: "Hang Pictures")
]

let sampleSubtasks = [
    Subtask(name: "Prepare Room", minitasks: sampleMinitasks),
    Subtask(name: "Clean Space", minitasks: sampleMinitasks)
]

let sampleSpaces = [
    Space(name: "Living Room", subtasks: sampleSubtasks),
    Space(name: "Kitchen", subtasks: sampleSubtasks)
]

let sampleRoom = [
    Room(name: "Main Floor", weight: 2, spaces: sampleSpaces),
    Room(name: "Second Floor", weight: 2, spaces: sampleSpaces)
]

let sampleProjects = [
    RoomProject(name: "Home Renovation", imageName: "home_renovation"),
    RoomProject(name: "Office Setup", imageName: "office_setup")
]
