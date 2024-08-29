//
//  Extension.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/8/24.
//

import Foundation


extension RoomProject {
    static var example: RoomProject {
        let exampleRooms = [
            Room.createTestRoom(name: "Kitchen", imageName: "Kitchen", weight: 5)
            ]
        return RoomProject(projectType: .kitchen, rooms: exampleRooms)
    }
}
extension Room {
    static var example: Room {
        Room.createTestRoom(name: "Kitchen", imageName: "Main kitchen area", weight: 5)
    }
}

extension Space {
    static var example: Space {
        Space(name: "Pantry", roomDescription: nil, subTasks: [])
    }
}

extension SubTask {
    static var example: SubTask {
        SubTask(name: "Clean up", miniTasks: [MiniTask.example])
    }
}
    
    extension MiniTask {
        static var example: MiniTask {
            MiniTask(name: "Clean up", imageName: "sample image", miniTaskDescription: "") 
        }
    }
