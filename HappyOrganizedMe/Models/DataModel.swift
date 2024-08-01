//
//  DataModel.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/25/24.
//

import Foundation

// Represents an entire organizing project
struct Project: Identifiable {
    var id = UUID()
    var name: String
    var rooms: [Room] = [] // A project can have multiple rooms
}

// Represents a specific room within a project
struct Room: Identifiable {
    var id = UUID()
    var name: String
    var tasks: [Task] = [] // A room can have multiple tasks
}

// Represents a task within a room
struct Task: Identifiable {
    var id = UUID()
    var name: String
    var subtasks: [Subtask] = [] // A task can have multiple subtasks
}

// Represents a subtask within a task
struct Subtask: Identifiable {
    var id = UUID()
    var name: String
    var minitasks: [Minitask] = [] // A subtask can have multiple minitasks
}

// Represents a minitask, which is the most granular step within a subtask
struct Minitask: Identifiable {
    var id = UUID()
    var name: String
}
