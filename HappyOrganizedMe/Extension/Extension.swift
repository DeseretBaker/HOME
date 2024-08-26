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
            Room(name: "Living Room", imageName: "Living Room", weight: 3), Room(name: "Kitchen", imageName: "Kitchen", weight: 5)
            ]
        return RoomProject(name: "Home Project", imageName: "Home Project", rooms: [])
    }
}
extension Room {
    static var example: Room {
        Room(name: "Kitchen", imageName: "Main kitchen area", weight: 5)
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
            MiniTask(name: "Clean up", imageName: "sample image")
        }
    }
