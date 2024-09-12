//
//  Progressable.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/11/24.
//

import Foundation

// Define a protocol for progress tracking and completion status
protocol Progressable {
    var isCompleted: Bool { get set }
    var progress: Double { get }  // A computed property to track progress
    
    mutating func toggleCompleted()  // Method to toggle completion status
}
