//
//  ResolveSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/3/24.
//
//
//import Foundation
//
//// Helper function to resolve SpaceType from a raw string value
//func resolveSpaceType(from rawValue: String) -> SpaceType? {
//    let allSpaceTypes: [SpaceType.Type] = [
//        KitchenSpaceType.self,
//        LivingRoomSpaceType.self,
//        BedroomSpaceType.self,
//        BathroomSpaceType.self,
//        DiningRoomSpaceType.self,
//        GarageSpaceType.self
//    ]
//    
//    for spaceType in allSpaceTypes {
//        if let resolvedSpaceType = spaceType.init(rawValue: rawValue) {
//            return resolvedSpaceType
//        }
//    }
//    
//    return nil
//}
