//
//  ProjectViewModel.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/3/24.
//

import Foundation

class ProjectViewModel: ObservableObject {
    @Published var projects: [Project] = []
    
    // add a new project
    func addProject(name: String) {
        let newProject = Project(name: name, rooms: [])
        projects.append(newProject)
    }
    
    // remove a project
    func removeProject(project: Project) {
        if let index = projects.firstIndex(where: { $0.id == project.id}) {
            projects.remove(at: index)
        }
    }
    // update a project name
    func updateProject(project: Project, newName: String) {
        if let index = project.firstIndex(where: { $0.id == project.id }) {
            project[index].name = newName
        }
    }
    //add an room to a project
    func addRoom(to project: Project, name: String) {
        if let index = projects.firstIndex(where: { $0.id == project.id }) {
            let newRoom = Room(name: name, )
        }
    }
}
