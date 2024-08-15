//
//  SampleModels.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/4/24.
//

import Foundation
import SwiftUI
import SwiftData


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

let sampleRooms = [
    Room(name: "Main Floor", spaces: sampleSpaces),
    Room(name: "Second Floor", spaces: sampleSpaces)
]

let sampleProjects = [
    Project(name: "Home Renovation", imageName: "home_renovation", rooms: sampleRooms),
    Project(name: "Office Setup", imageName: "office_setup", rooms: sampleRooms)
]
