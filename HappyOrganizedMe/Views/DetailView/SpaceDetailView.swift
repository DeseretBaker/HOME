//
//  SpaceDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import SwiftUI

struct SpaceDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var space: Space  // To track changes in space data
    var spaceType: SpaceTypeBox { space.spaceType }
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Space Header
                ZStack(alignment: .bottomLeading) {
                    Image(space.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 175)
                        .clipped()
                        .cornerRadius(10)
                    
                    // Text over image
                    Text(space.name)
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
   
                    // SubTask Grid
                    Text("Donate it, Someone else needs it")
                        .font(.headline)
                        .padding(.leading)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(space.subTasks) { subTask in
                            NavigationLink(destination: SubTaskDetailView(subTask: subTask)) {
                                CardView(item: subTask)
                            }
                        }
                    }
                    .padding([.leading, .trailing])
                }
            }
            .navigationTitle("Keep what you love")
            .toolbar {
                Button(action: {
       
                }) {
                   
                }
            }
        }
    }

