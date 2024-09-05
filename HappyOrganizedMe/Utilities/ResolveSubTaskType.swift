//
//  ResolveSubTaskType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/3/24.
//

import Foundation

// Helper function to resolve SubTaskType from a raw string value
func resolveSubTaskType(from rawValue: String) -> (any SubTaskType)? {
    let subTaskTypes: [any SubTaskType.Type] = [
        KitchenSubTaskType.self,
        LivingRoomSubTaskType.self,
        BathroomSubTaskType.self,
        BedroomSubTaskType.self,
        DiningRoomSubTaskType.self,
        OfficeSubTaskType.self,
        PlayroomSubTaskType.self,
        GarageSubTaskType.self,
        StorageSubTaskType.self
        // Add more subtask types here if necessary
    ]
    
    for subTaskType in subTaskTypes {
        if let type = subTaskType.init(rawValue: rawValue) {
            return type
        }
    }
    return nil
}

