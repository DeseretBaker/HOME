//
//  SpaceSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct SpaceSelectionView: View {
    var projectController: ProjectController = .shared
    @Environment(\.modelContext) private var modelContext
    @Bindable var room: Room  // Use @Bindable to automatically update the view when the room changes
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    // Dynamically calculate grid columns based on screen size
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: UIScreen.main.bounds.width > 768 ? 200 : 100), spacing: 16)]
    }
    
    var body: some View {
        VStack {
            if let spaces = room.spaces, !spaces.isEmpty {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(spaces, id: \.id) { space in
                            NavigationLink(destination: SpaceDetailView(space: space)) {
                                CardView(item: space)  // Use the existing CardView
                            }
                        }
                    }
                    .padding()
                }
            } else {
                Text("No spaces available in this room.")
                    .font(.caption)
                    .padding()
            }
        }
        .navigationTitle("You've got this!")
        .toolbar {
            // Optionally add EditButton() for future features
        }
        .onAppear {
            if let spaces = room.spaces {
                print("Spaces available: \(spaces.count)")
            }
        }
    }
    
    private func saveContext() {
        do {
            try modelContext.save()
        } catch {
            print("Failed to save context: \(error.localizedDescription)")
        }
    }
}
