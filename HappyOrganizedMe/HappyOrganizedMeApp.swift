//
//  HappyOrganizedMeApp.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/14/24.
//

import SwiftUI

@main
struct HappyOrganizedMeApp: App {
    @StateObject var projectViewModel = ProjectViewModel()
    
    var body: some Scene {
        WindowGroup {
            StartHereView() // Starting view of your app
                .environmentObject(projectViewModel) // Pass the environment object here
        }
    }
}
