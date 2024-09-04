//
//  ResolveMiniTaskType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/3/24.
//

import Foundation

// Helper function to resolve MiniTaskType from a raw string value
func resolveMiniTaskType(from rawValue: String) -> MiniTaskType? {
    let miniTaskTypes: [MiniTaskType.Type] = [
        KitchenMiniTaskType.self,
        LivingRoomMiniTaskType.self,
        BathroomMiniTaskType.self,
        BedroomMiniTaskType.self,
        DiningRoomMiniTaskType.self,
        OfficeMiniTaskType.self,
        PlayroomMiniTaskType.self,
        GarageMiniTaskType.self,
        StorageMiniTaskType.self
        // Add more mini task types here if necessary
    ]
    
    for miniTaskType in miniTaskTypes {
        if let type = miniTaskType.init(rawValue: rawValue) {
            return type
        }
    }
    return nil
}
