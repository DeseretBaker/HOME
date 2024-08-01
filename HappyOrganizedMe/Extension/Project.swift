//
//  Project.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/31/24.
//

extension Project {
    mutating func addRoom(name: String) {
        let newRoom = Room(name: name)
        rooms.append(newRoom)
    }
    
    mutating func updateRoom(id: UUID, newName: String) {
        if let index = rooms.firstIndex(where: { $0.id == id }) {
            rooms[index].name = newName
        }
    }
    
    mutating func deleteRoom(id: UUID) {
        rooms.removeAll { $0.id == id }
    }
}
extension Room {
    mutating func addTask(name: String) {
        let newTask = Task(name: name)
        tasks.append(newTask)
    }
    
    mutating func updateTask(id: UUID, newName: String) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].name = newName
        }
    }
    
    mutating func deleteTask(id: UUID) {
        tasks.removeAll { $0.id == id }
    }
}
extension Task {
    mutating func addSubtask(name: String) {
        let newSubtask = Subtask(name: name)
        subtasks.append(newSubtask)
    }
    
    mutating func updateSubtask(id: UUID, newName: String) {
        if let index = subtasks.firstIndex(where: { $0.id == id }) {
            subtasks[index].name = newName
        }
    }
    
    mutating func deleteSubtask(id: UUID) {
        subtasks.removeAll { $0.id == id }
    }
}
extension Subtask {
    mutating func addMinitask(name: String) {
        let newMinitask = Minitask(name: name)
        minitasks.append(newMinitask)
    }
    
    mutating func updateMinitask(id: UUID, newName: String) {
        if let index = minitasks.firstIndex(where: { $0.id == id }) {
            minitasks[index].name = newName
        }
    }
    
    mutating func deleteMinitask(id: UUID) {
        minitasks.removeAll { $0.id == id }
    }
}
