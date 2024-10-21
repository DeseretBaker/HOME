//
//  ProjectDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

// ProjectDetailView.swift
import SwiftUI

struct ProjectDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var project: Project
    
    // State variables to track button taps
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Project Header with text over image
                ZStack(alignment: .bottomLeading) {
                    Image(project.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 175)
                        .clipped()
                        .cornerRadius(10)
                    
                    // Text over image
                    Text(project.name)
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
                
                // Room Grid
                Text("You've got this!")
                    .font(.headline)
                    .padding(.leading)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(project.rooms ?? []) { room in
                        NavigationLink(destination: RoomDetailView(room: room)) {
                            CardView(item: room)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("You, Be, You!")
    }
}
