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
    private var projectController: ProjectController = .shared
    @State private var hasTappedStartHere: Bool = false
    var project: Project?
    
    var body: some View {
        // if hasTapped StartHere button {
        // ProjectSelectionView()
        // else {
        if hasTappedStartHere {
            ProjectSelectionView()
        } else {
            StartHereView(hasClickedStartHereButton: $hasTappedStartHere)
        }
    }
    
    private func syncProjects() {
        do {
            try modelContext.save()
        } catch {
            print("Error syncing projects: \(error.localizedDescription)")
            handleCloudSyncConflict()
        }
    }
    
    private func handleCloudSyncConflict() {
        do {
            // Example of fetching the latest state of objects to manually resolve conflicts
            let fetchDescriptor = FetchDescriptor<Project>()
            let latestProjects = try modelContext.fetch(fetchDescriptor)
            
            // Example conflict resolution logic (manual)
            resolveConflicts(with: latestProjects)
            
            // Attempt to save again after resolving conflicts
            try modelContext.save()
            
            if modelContext.hasChanges {
                print("Conflicts resolved, re-syncing projects...")
                syncProjects() // Re-sync after resolving conflicts
            }
        } catch {
            print("Failed to handle cloud sync conflict: \(error.localizedDescription)")
            // Additional logic to notify the user or further debug
        }
    }
    
    private func resolveConflicts(with latestProjects: [Project]) {
        // Implement custom conflict resolution logic here
        // For example, you might compare `latestProjects` with the current state in `modelContext`
        // and decide which properties should be updated, merged, or overridden.
        
    }
}
