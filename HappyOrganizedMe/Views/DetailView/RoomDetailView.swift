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
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(room.spaces) { space in
                        NavigationLink(destination: SpaceDetailView(space: space)) {
                            SpaceCardView(space: space)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("Room Details")
        .toolbar {
            Button(action: {
                // Action for editing the room or adding new spaces
            }) {
                Image(systemName: "pencil")
            }
        }
    }
}

struct SpaceCardView: View {
    var space: Space
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if !space.imageName.isEmpty {
                Image(space.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                    .clipped()
                    .cornerRadius(10)
            } else {
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 120)
                    .cornerRadius(10)
                    .overlay(
                        Text("No Image")
                            .foregroundColor(.secondary)
                    )
            }
            
            Text(space.name)
                .font(.headline)
                .padding(.top, 5)
            
            ProgressView(value: space.progress, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
            
            Text("Progress: \(String(format: "%.0f", space.progress))%")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
