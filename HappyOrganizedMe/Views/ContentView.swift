//
//  ContentView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/3/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @EnvironmentObject private var projectController: ProjectController  // Corrected EnvironmentObject usage
    
    var body: some View {
        NavigationView {
            StartHereView()
                .environmentObject(projectController)  // Ensuring environment object is passed down
        }
    }
    
    private func syncProjects() {
        do {
            try modelContext.save()  // Save changes to the context, which will also sync with CloudKit
        } catch {
            print("Error syncing projects: \(error.localizedDescription)")
            handleCloudSyncConflict()
        }
    }
    
    private func handleCloudSyncConflict() {
        // Handle any sync conflicts here
        print("Handling cloud sync conflict")
    }
}

