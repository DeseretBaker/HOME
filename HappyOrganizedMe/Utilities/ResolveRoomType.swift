//
//  ResolveRoomType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/3/24.
//

import Foundation

func resolveRoomType(from rawValue: String) -> (any RoomType)? {
    let roomTypes: [any RoomType.Type] = [
        KitchenRoomType.self,
        LivingRoomType.self,
        BedroomRoomType.self,
        BathroomRoomType.self,
        DiningRoomType.self,
        GarageRoomType.self,
        OfficeType.self,
        PlayroomRoomType.self,
        StorageRoomType.self
        // Add more room types here if necessary
    ]
    
    for roomType in roomTypes {
        if let type = roomType.init(rawValue: rawValue) {
            return type
        }
    }
    return nil
}
