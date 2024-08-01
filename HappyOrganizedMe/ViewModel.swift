//
//  ViewModel.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/25/24.
//

import Foundation

class ProjectViewModel: ObservableObject {
    @Published var projects: [Project] = []

    // Methods to add/remove/update projects, rooms, spaces, etc.
}
