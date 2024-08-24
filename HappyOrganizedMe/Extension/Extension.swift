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
        return RoomProject(name: "Home Project", imageName: "Home Project", rooms: exampleRooms)
    }
}
extension Room {
    static var example: Room {
        Room(name: "Kitchen", imageName: "Main kitchen area", weight: 5)
    }
}

extension Space {
    static var example: Space {
        Space(name: "Pantry")
    }
}

extension Subtask {
    static var example: Subtask {
        Subtask(name: "Clean up", minitasks: [Minitask.example])
    }
}
    
    extension Minitask {
        static var example: Minitask {
            Minitask(name: "Clean up", imageName: "sample image")
        }
    }
