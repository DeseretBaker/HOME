//
//  RoomType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

protocol RoomType: Codable, CaseIterable {
    var name: String { get }
    var imageName: String { get }
    var weight: Double { get }
    var instructions: String? { get }
    var usageDescription: String? { get }
    var rawValue: String { get }
    init?(rawValue: String) // make the initializer failable
}

enum KitchenRoomType: String, RoomType {
    case islandKitchen
    case uShapedKitchen
    case lShapedKitchen
    case galleyKitchen
    case singleWallKitchen
    case openPlanKitchen
    case kitchenette
    case outdoorKitchen
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 5.0 }
       
    // Provide all cases statically
    static var allRoomTypes: [any RoomType] {
        return KitchenRoomType.allCases.map { $0 }
    }
}
enum LivingRoomType: String, RoomType {
//    case lShapedLivingRoom
//    case uShapedLivingRoom
    case livingRoom
    case familyRoom
    case lounge
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 2.0 }
        
    static var allRoomTypes: [any RoomType] {
        return LivingRoomType.allCases.map { $0 }
    }
}
enum BedroomRoomType: String, RoomType {
    case masterBedroom
    case childrensBedroom
    case youngAdultBedroom
//    case guestBedroom
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 3.0 }
       
    static var allRoomTypes: [any RoomType] {
        return BedroomRoomType.allCases.map { $0 }
    }
}
enum BathroomRoomType: String, RoomType {
    case halfBath
//    case jackJill
//    case quarterBath
//    case fullBath
    case guestBath
    case masterBath
//    case powderRoom
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 4.0 }
        
    static var allRoomTypes: [any RoomType] {
        return BathroomRoomType.allCases.map { $0 }
    }
}
enum DiningRoomType: String, RoomType {
    case diningRoom
    case breakfastNook
    case formalDining
//    case openDining
//    case casualDining
//    case diningRoomWithBar
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 1.0 }
    
    static var allRoomTypes: [any RoomType] {
        return DiningRoomType.allCases.map { $0 }
    }
}
enum GarageRoomType: String, RoomType {
    case oneCarGarage
    case twoCarGarage
    case threeCarGarage
//    case fourCarGarage
//    case fiveCarGarage
//    case sixCarGarage
    case carport
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 5.0 }
       
    static var allRoomTypes: [any RoomType] {
        return GarageRoomType.allCases.map { $0 }
    }
}
enum OfficeType: String, RoomType {
    case creativeOffice
    case homeOffice
//    case openPlanOffice
    case sharedOffice
//    case studentOffice
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 3.0 }
        
    static var allRoomTypes: [any RoomType] {
        return OfficeType.allCases.map { $0 }
    }
}
enum PlayroomRoomType: String, RoomType {
//    case creativePlayroom
//    case fantasyPlayroom
    case gameRoom
    case movieRoom
//    case storytellerRoom
//    case adventureRoom
//    case outdoorPlayRoom
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 3.0 }
        
    static var allRoomTypes: [any RoomType] {
        return PlayroomRoomType.allCases.map { $0 }
    }
}
enum StorageRoomType: String, RoomType {
    case pantry
    case closet
//    case basement
//    case attic
    case storage
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 4.0 }
        
    static var allRoomTypes: [any RoomType] {
        return StorageRoomType.allCases.map { $0 }
    }
}
enum UnknownRoomType: String, RoomType {
    case unknown
    
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String? { "String" }
    var usageDescription: String? { "String" }
    var weight: Double { 0.0 }
    
    static var allRoomTypes: [any RoomType] {
        return UnknownRoomType.allCases.map { $0 }
    }
}

// Access all roomTypes
let allRoomTypes: [any RoomType] =
KitchenRoomType.allRoomTypes +
LivingRoomType.allRoomTypes +
GarageRoomType.allRoomTypes +
BathroomRoomType.allRoomTypes +
StorageRoomType.allRoomTypes +
OfficeType.allRoomTypes +
PlayroomRoomType.allRoomTypes +
BedroomRoomType.allRoomTypes +
DiningRoomType.allRoomTypes +
UnknownRoomType.allRoomTypes






