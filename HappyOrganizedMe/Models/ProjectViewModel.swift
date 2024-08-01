//
//  ProjectViewModel.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import SwiftUI
import SwiftData

class ProjectViewModel: ObservableObject {
    // Add any properties and methods you need here to manage your project data
    @Published var projects: [Project] = []
}

struct StartHereView_Previews: PreviewProvider {
    static var previews: some View {
        StartHereView()
            .environmentObject(ProjectViewModel()) // Using the view model for previews
    }
}

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
