//
//  ResolveSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/3/24.
//

import Foundation

// Helper function to resolve SpaceType from a raw string value
func resolveSpaceType(from rawValue: String) -> (any SpaceType)? {
    let spaceTypes: [any SpaceType.Type] = [
        KitchenSpaceType.self,
        LivingRoomSpaceType.self,
        BathroomSpaceType.self,
        BedroomSpaceType.self,
        DiningRoomSpaceType.self,
        OfficeSpaceType.self,
        PlayroomSpaceType.self,
        GarageSpaceType.self,
        StorageSpaceType.self
        // Add more space types here if necessary
    ]
    
    for spaceType in spaceTypes {
        if let type = spaceType.init(rawValue: rawValue) {
            return type
        }
    }
    return nil
}
