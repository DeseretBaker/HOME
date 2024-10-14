//
//  RoomSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct RoomSelectionView: View {
    var projectController: ProjectController = .shared
    @Environment(\.modelContext) private var modelContext
    @Bindable var project: Project
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    var body: some View {
        
        VStack {
            if project.rooms.isEmpty {
                Text("No rooms available in this project.")
                    .font(.caption)
                    .padding()
            } else {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(project.rooms) { room in
                            NavigationLink(destination: RoomDetailView(room: room)) {
                                CardView(item: room)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("Areas to work on")
        .toolbar {
            //EditButton()
        }
        .onAppear {
            print("Rooms available: \(project.rooms.count)")
        }
        
    }
}
