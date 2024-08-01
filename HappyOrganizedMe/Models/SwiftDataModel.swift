//
//  SwiftDataModel.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/31/24.
//

import SwiftData
import Foundation

@Model
class Project {
    @Attribute(.primaryKey) var id: UUID
    @Attribute var name: String
    @Relationship(.cascade) var rooms: [Room] = []
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

@Model
class Room {
    @Attribute(.primaryKey) var id: UUID
    @Attribute var name: String
    @Relationship(.cascade) var tasks: [Task] = []
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

@Model
class Task {
    @Attribute(.primaryKey) var id: UUID
    @Attribute var name: String
    @Relationship(.cascade) var subtasks: [Subtask] = []
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

@Model
class Subtask {
    @Attribute(.primaryKey) var id: UUID
    @Attribute var name: String
    @Relationship(.cascade) var minitasks: [Minitask] = []
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

@Model
class Minitask {
    @Attribute(.primaryKey) var id: UUID
    @Attribute var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
