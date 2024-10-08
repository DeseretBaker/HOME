//
//  CardView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/9/24.
//
import SwiftUI

protocol Displayable {
    var name: String { get } // The name of the item (e.g., "Sofa")
    var imageName: String { get } // The name of the image associated with the item (e.g., "sofa_image")
    var instructions: String { get } // Instructions for cleaning/maintaining the item
    var usageDescription: String { get } // Description of how the item is used
    var progress: Double { get } // Progress percentage, e.g., for cleaning or organizing tasks
    var isCompleted: Bool { get } // Indicates whether the task related to the item is complete
    
}

struct CardView<Item: Displayable>: View {
    var item: Item
    
    // State variables to track button taps for each item
    @State private var showInstructions = false
    @State private var showUsageDescription = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Image and item name
            ZStack {
                if !item.imageName.isEmpty {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 110)
                        .clipped()
                        .cornerRadius(10)
                } else {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 110)
                        .cornerRadius(10)
                        .overlay(
                            Text("No Image")
                                .foregroundColor(.secondary)
                        )
                }
            }
            
            Text(item.name)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            ProgressView(value: item.progress, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: .teal))
            
            Text("Progress: \(String(format: "%.0f", item.progress))%")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            // Buttons for instructions and usage description
            HStack {
                Button(action: {
                    showInstructions.toggle()
                    showUsageDescription = false // Hide the other section if it's open
                }) {
                    Text("Instructions")
                        .font(.footnote)
                        .padding(5)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
                
                Spacer().frame(width: 10)
                
                Button(action: {
                    showUsageDescription.toggle()
                    showInstructions = false // Hide the other section if it's open
                }) {
                    Text("Usage")
                        .font(.footnote)
                        .padding(5)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            }
            .padding(.top, 5)

            // Display the complete instructions or usage description when tapped
            if showInstructions {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Instructions")
                        .font(.headline)
                        .padding(.bottom, 2)
                    
                    Text(item.instructions)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5)
                }
                .padding(.top, 5)
                .transition(.slide) // Optional animation
            }
            
            if showUsageDescription {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Usage Description")
                        .font(.headline)
                        .padding(.bottom, 2)
                    
                    Text(item.usageDescription)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5)
                }
                .padding(.top, 5)
                .transition(.slide) // Optional animation
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(item.name), Progress: \(String(format: "%.0f", item.progress))%, \(item.isCompleted ? "Completed" : "In Progress")")
        .animation(.easeInOut, value: showInstructions || showUsageDescription) // Smooth animation
    }
}
