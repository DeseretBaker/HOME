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
    
    // Dynamically calculate grid columns based on the screen size
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: UIScreen.main.bounds.width > 768 ? 200 : 100), spacing: 16)]
    }
    
    var body: some View {
        VStack {
            if let rooms = project.rooms, !rooms.isEmpty {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(rooms, id: \.id) { room in
                            NavigationLink(destination: RoomDetailView(room: room)) {
                                CardView(item: room)  // Reusing the CardView for rooms
                            }
                        }
                    }
                    .padding()
                }
            } else {
                Text("No rooms available in this project.")
                    .font(.caption)
                    .padding()
            }
        }
        .navigationTitle("Areas to work on")
        .toolbar {
            // Optionally add an EditButton for future features
        }
        .onAppear {
            if let rooms = project.rooms {
                print("Rooms available: \(rooms.count)")
            }
        }
    }
}
