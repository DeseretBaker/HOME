//
// RoomDetailView.swift
// HappyOrganizedMe
//
// Created by Deseret Baker
//

import SwiftUI

struct RoomDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var room: Room  // ObservedObject to track changes in room data
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Room Header
                VStack(alignment: .leading, spacing: 10) {
                    Image(room.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 125)
                        .clipped()
                        .cornerRadius(10)
                    
                    Text(room.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    ProgressView(value: room.progress, total: 100)
                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                        .padding(.vertical, 10)
                    
                    HStack {
                        Text("Progress: \(String(format: "%.0f", room.progress))%")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("Status: \(room.isCompleted ? "Completed" : "In Progress")")
                            .font(.subheadline)
                            .foregroundColor(room.isCompleted ? .green : .orange)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding([.leading, .trailing])
                
                // Space Grid
                Text("Spaces")
                    .font(.headline)
                    .padding(.leading)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(room.spaces) { space in
                        NavigationLink(destination: SpaceDetailView(space: space)) {
                            CardView(item: space)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("Break It Down")
//        .toolbar {
//            Button(action: {
                // Action for editing the room or adding new spaces
//            }) {
//                Image(systemName: "pencil")
//            }
//        }
    }
}

