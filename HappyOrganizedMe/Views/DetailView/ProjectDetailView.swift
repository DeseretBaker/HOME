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
      @State private var showInstructions = false
      @State private var showUsageDescription = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                // Project Header
                VStack(alignment: .leading, spacing: 15) {
                    Image(project.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 125)
                        .clipped()
                        .cornerRadius(10)
                    
                    Text(project.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    ProgressView(value: project.progress, total: 100)
                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                        .padding(.vertical, 10)
                    
                    HStack {
                        Text("Progress: \(String(format: "%.0f", project.progress))%")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("Status: \(project.isCompleted ? "Completed" : "In Progress")")
                            .font(.subheadline)
                            .foregroundColor(project.isCompleted ? .green : .orange)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding([.leading, .trailing])
                
                // Buttons to show information
                                HStack {
                                    Button(action: {
                                        // Toggle the visibility of the instructions
                                        showInstructions.toggle()
                                        showUsageDescription = false // Hide the other section if it's open
                                    }) {
                                        Text("Instructions")
                                            .fontWeight(.semibold)
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                    
                                    Spacer().frame(width: 10) // Space between buttons
                                    
                                    Button(action: {
                                        // Toggle the visibility of the usage description
                                        showUsageDescription.toggle()
                                        showInstructions = false // Hide the other section if it's open
                                    }) {
                                        Text("Usage Description")
                                            .fontWeight(.semibold)
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.green)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                }
                                .padding([.leading, .trailing])
                                
                                // Display instructions or usage description based on button tap
                                if showInstructions {
                                    Text("Instructions")
                                        .font(.headline)
                                        .padding(.top)
                                    
                                    Text(project.projectType.instructions ?? "No instructions available.") // Access enum content
                                        .padding()
                                        .background(Color(.systemGray6))
                                        .cornerRadius(10)
                                        .padding([.leading, .trailing])
                                }
                                
                                if showUsageDescription {
                                    Text("Usage Description")
                                        .font(.headline)
                                        .padding(.top)
                                    
                                    Text(project.projectType.usageDescription ?? "No usage description available.") // Access enum content
                                        .padding()
                                        .background(Color(.systemGray6))
                                        .cornerRadius(10)
                                        .padding([.leading, .trailing])
                                }
                
          // Room Grid
                Text("First Step")
                    .font(.headline)
                    .padding(.leading)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(project.rooms) { room in
                        NavigationLink(destination: RoomDetailView(room: room)) {
                            CardView(item: room)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("Where to Start")
    
    }
}

