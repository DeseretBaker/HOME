//
//  RoomData.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/10/24.
//

import Foundation

let livingRoomItems = [
    Item(name: "Sofa", imageName: "sofa_image", instructions: "Clean under cushions and vacuum.", usageDescription: "Primary seating furniture.", progress: 50.0, isCompleted: false, type: "LivingRoom", category: "Furniture"),
    Item(name: "Coffee Table", imageName: "coffee_table_image", instructions: "Wipe down with wood cleaner.", usageDescription: "Place for drinks and decor.", progress: 75.0, isCompleted: true, type: "LivingRoom", category: "Furniture")
]

let kitchenItems = [
    Item(name: "Blender", imageName: "blender_image", instructions: "Disassemble and wash after use.", usageDescription: "Used for smoothies and sauces.", progress: 20.0, isCompleted: false, type: "Kitchen", category: "Appliances"),
    Item(name: "Spatula", imageName: "spatula_image", instructions: "Hand wash and store in utensils drawer.", usageDescription: "For flipping and cooking.", progress: 90.0, isCompleted: true, type: "Kitchen", category: "Utensils")
]
