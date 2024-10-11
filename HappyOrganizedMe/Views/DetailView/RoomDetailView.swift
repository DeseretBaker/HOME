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
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Room Header
                ZStack(alignment: .bottomLeading) {
                    Image(room.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 175)
                        .clipped()
                        .cornerRadius(10)
                    
                    // Text over image
                    Text(room.name)
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Color.gray.opacity(0.4) // Background color for better text visibility
                                .cornerRadius(10)
                        )
                        .padding([.leading, .bottom], 5) // Positioning text at bottom-left
                }
                .frame(height: 175)
                .cornerRadius(10)
                .padding([.leading, .trailing])
   
                
                // Space Grid
                Text("All the way Down")
                    .font(.headline)
                    .padding(.leading)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(room.spaces, id: \.id) { space in
                        NavigationLink(destination: SpaceDetailView(space: space)) {
                            CardView(item: space)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .onAppear {
            start()
        }
        .navigationTitle("Break It Down")
    }
    
    func start() {
        print("Spaces count: \")(room.spaces.count)")
        for space in room.spaces {
            print("Space Name: \(space.name)")
        }
    }
}

