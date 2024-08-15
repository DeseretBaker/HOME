//
//  BaseProjects.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import Foundation
import SwiftUI
import SwiftData

let baseProjects: [Project] = [
    Project(name: "Kitchen", imageName: "Kitchen"),
    Project(name: "Living Room", imageName: "Livingroom"),
    Project(name: "Garage", imageName: "Garage"),
    Project(name: "Bathroom", imageName: "Bathroom"),
    Project(name: "Office", imageName: "Office"),
    Project(name: "Pantry", imageName: "Pantry"),
    Project(name: "PlayRoom", imageName: "PlayRoom"),
    Project(name: "Storage", imageName: "Storage"),
    Project(name: "DiningRoom", imageName: "DiningRoom"),
    Project(name: "Basement", imageName: "Basement")
]

let kitchenMinitasks = [
    Minitask(name: "Clean", imageName: "clean", isCompleted: false),
    Minitask(name: "organize", imageName: "organize", isCompleted: false),
    Minitask(name: "label", imageName: "label", isCompleted: false),
    Minitask(name: "contain", imageName: "contain", isCompleted: false),
    Minitask(name: "group", imageName: "group", isCompleted: false)
]
let kitchenSubtasks = [
    Subtask(name: "Cookware", imageName: "Cookware", progress: 0.0),
    Subtask(name: "Cooking utensils", imageName: "Cooking utensils", progress: 0.0),
    Subtask(name: "Spices", imageName: "Spices", progress: 0.0),
    Subtask(name: "Oils", imageName: "Oils", progress: 0.0),
    Subtask(name: "Knives & cutting boards", imageName: "Knives", progress: 0.0),
    Subtask(name: "Gadgets", imageName: "Gadgets", progress: 0.0),
    Subtask(name: "Small Appliances", imageName: "Small Appliances", progress: 0.0),
    Subtask(name: "Bowls", imageName: "Bowls", progress: 0.0),
    Subtask(name: "Measuring", imageName: "Measuring", progress: 0.0),
    Subtask(name: "Compost & Trash & Recycling", imageName: "Compost", progress: 0.0),
    Subtask(name: "Towels", imageName: "Towels", progress: 0.0),
    Subtask(name: "Cleaning supplies", imageName: "Cleaning supplies", progress: 0.0),
    Subtask(name: "Pantry shelves", imageName: "Pantry shelves", progress: 0.0),
    Subtask(name: "Serveware", imageName: "Serveware", progress: 0.0),
    Subtask(name: "Cutlery", imageName: "Cutlery", progress: 0.0),
    Subtask(name: "Dish-ware", imageName: "Dish-ware", progress: 0.0),
    Subtask(name: "Bakeware", imageName: "Bakeware", progress: 0.0),
    Subtask(name: "Paper goods", imageName: "Paper goods", progress: 0.0),
    Subtask(name: "Cupboards", imageName: "Cupboards", progress: 0.0),
    Subtask(name: "Cabinets", imageName: "Cabinets", progress: 0.0),
    Subtask(name: "Countertops", imageName: "Countertops", progress: 0.0)
]
let kitchenSpace = [
    Space(name: "Cooking zone", imageName: "Cooking zone", progress: 0.0),
    Space(name: "Preparation zone", imageName: "Preparation zone", progress: 0.0),
    Space(name: "Cleaning zone", imageName: "Cleaning zone", progress: 0.0),
    Space(name: "Storage zone", imageName: "Storage zone", progress: 0.0),
    Space(name: "Serving/Plating zone", imageName: "Serving zone", progress: 0.0),
    Space(name: "Dining zone", imageName: "Breakfast nook", progress: 0.0),
    Space(name: "Pantry", imageName: "Pantry", progress: 0.0),
    Space(name: "Beverage station", imageName: "Beverage station", progress: 0.0),
    Space(name: "Island/Prep Island", imageName: "Island", progress: 0.0),
    Space(name: "Utility zone", imageName: "Utility zone", progress: 0.0),
    Space(name: "Tech zone", imageName: "Tech zone", progress: 0.0)
    
]
let kitchenRoom = [
    Room(name: "Island kitchen", imageName: "Island kitchen", progress: 0.0),
    Room(name: "U-Shaped kitchen", imageName: "U-Shaped kitchen", progress: 0.0),
    Room(name: "L-shaped kitchen", imageName: "L-shaped kitchen", progress: 0.0),
    Room(name: "Galley kitchen", imageName: "Galley kitchen", progress: 0.0),
    Room(name: "Single-wall kitchen", imageName: "Single-wall kitchen", progress: 0.0),
    Room(name: "Open-Plan kitchen", imageName: "Open-Plan kitchen", progress: 0.0),
    Room(name: "Kitchenette or compact kitchen", imageName: "Kitchetene", progress: 0.0),
    Room(name: "Outdoor kitchen", imageName: "Outdoor kitchen", progress: 0.0)
]
let kitchenProject = Project(name: "Kitchen", imageName: "Kitchen", rooms: kitchenRoom, progress: 0.0)
