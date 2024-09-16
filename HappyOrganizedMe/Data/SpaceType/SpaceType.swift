//
//  SpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation
import SwiftUI

//protocol SpaceType: Codable, CaseIterable, Identifiable {
//    var id: UUID { get }
//    var name: String { get }
//    var imageName: String { get }
//    var instructions: String { get }
//    var usageDescription: String { get }
//    var weight: Double { get }
//    var type: String { get }
//    var category: String { get }
//    var rawValue: String { get }
//    init?(rawValue: String)
//}







enum UnknownSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "String" }
    var usageDescription: String { "String" }
    var weight: Double { 0.0 }
    var type: String { "Unknown" }
    var category: String { "Unknown" }

// Add other SpaceType enums here
static var allSpaceTypes: [any SpaceType] {
    return UnknownSpaceType.allCases.map { $0 }
    }
}

//// Access all spaceTypes
//extension SpaceType {
//    static var allSpaceTypes: [UnknownSpaceType] {
//        return [UnknownSpaceType].allcases
//        
//    }
//}
