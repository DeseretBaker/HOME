//
//  ProjectManager.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/31/24.
//
import Foundation

struct ProjectManager {
    var projects: [Project] = []
    
    mutating func addProject(name: String) {
        let newProject = Project(name: name)
        projects.append(newProject)
    }
    
    mutating func updateProject(id: UUID, newName: String) {
        if let index = projects.firstIndex(where: { $0.id == id }) {
            projects[index].name = newName
        }
    }
    
    mutating func deleteProject(id: UUID) {
        projects.removeAll { $0.id == id }
    }
}
