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
    var projects: [RoomProject] // array of project objects.
    
    @StateObject var projectController = ProjectController()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(projects) { project in
                    ProjectView(project: project)
                        .padding()
                }
            }
        }
        
        
        Text("Happy Organized Me")
            .onAppear {
                syncProjects()
            }
        StartHereView()
            .environmentObject(projectController)
    }
    
    private func syncProjects() {
        do {
            try modelContext.save() // Save changes to the context, which will also sync with Cloudkit
        } catch {
            print("Error syncing projects:' \(error.localizedDescription)")
            handleCloudSyncConfilict()
        }
    }
    private func handleCloudSyncConfilict() {
        // handle any sync conflicts here
        print("Handling cloud sync conflict \("error")")
    }
    
}
