//
//  Progressable.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/11/24.
//

import Foundation

// Protocol to track progress and completion status for any conforming type
protocol Progressable {
    var isCompleted: Bool { get set } // Tracks if the item is completed
    var progress: Double { get }      // A computed property to track progress percentage
    
    mutating func toggleCompleted()   // Method to toggle completion status
}

// Default implementation of `toggleCompleted` in an extension
extension Progressable {
    mutating func toggleCompleted() {
        isCompleted.toggle()  // Automatically toggles the completion status
    }
}
