//
//  Extension.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/8/24.
//

import Foundation


extension Project {
    static var example: Project {
        let exampleRooms = [Room(name: "Living Room", imageName: "Living Room"), Room(name: "Kitchen", imageName: "Kitchen")]
        return Project(name: "Home Project", imageName: "Home Project", rooms: exampleRooms)
    }
}
extension Room {
    static var example: Room {
        Room(name: "Kitchen", imageName: "Main kitchen area", spaces: [Space.example])
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
