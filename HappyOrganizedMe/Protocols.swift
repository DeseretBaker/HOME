//
//  Protocols.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/18/24.
//

import Foundation

// Protocols.swift

import Foundation

// Define your protocols here

protocol RoomType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
    
}

protocol SpaceType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
}
protocol SubTaskType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
}
protocol MiniTaskType: Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
}

//protocol DataLoader {
//    func loadData()
//}
//
//protocol TrackableProgress {
//    var progress: Double { get }
//    func updateProgress()
//}
//
//protocol IdentifiableEntity {
//    var id: UUID { get }
//}
//
//protocol Displayable {
//    var displayName: String { get }
//    var imageName: String { get }
//}
