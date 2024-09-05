//
//  RoomSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct RoomSelectionView: View {
    @EnvironmentObject var projectController: ProjectController
    @Environment(\.modelContext) private var modelContext
    @Bindable var project: Project

    var body: some View {
        NavigationView {
            VStack {
                if project.rooms.isEmpty {
                    Text("No rooms available in this project.")
                        .font(.headline)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
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
            .navigationTitle("Select a Room")
            .toolbar {
                EditButton()
            }
            .onAppear {
                print("Rooms available: \(project.rooms.count)")
            }
        }
    }
}
