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
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
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
            HStack(spacing: 10) {
                Button(action: {
                    showInstructionsSheet = true // Show instructions sheet
                }) {
                    Text("I")
                        .font(.footnote)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(5)
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer().frame(width: 10)
                
                Button(action: {
                    showUsageDescriptionSheet = true // Show usage description sheet
                }) {
                    Text("U")
                        .font(.footnote)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(5)
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding([.leading, .trailing])
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(item.name), Progress: \(String(format: "%.0f", item.progress))%, \(item.isCompleted ? "Completed" : "In Progress")")
        .sheet(isPresented: $showInstructionsSheet) {
            InstructionSheetView(title: "Instructions", content: item.instructions)
        }
        .sheet(isPresented: $showUsageDescriptionSheet) {
            InstructionSheetView(title: "Usage Description", content: item.usageDescription)
        }
    }
}

// Reusable sheet view (same as in ProjectDetailView)
struct InstructionSheetView: View {
    var title: String // The title for the sheet (e.g., "Instructions" or "Usage Description")
    var content: String // The actual content to be displayed
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(title) // Display the title
                    .font(.headline)
                    .padding()
                Spacer()
            }
            Divider()
            ScrollView {
                if content.isEmpty {
                    Text("No information available") // Display this if content is empty
                        .padding()
                        .foregroundColor(.secondary)
                } else {
                    Text(content) // Display the actual content
                        .padding()
                }
            }
        }
        .presentationDetents([.medium, .large]) // Allows the sheet to be adjustable in size
        .presentationDragIndicator(.visible) // Shows a drag indicator to swipe down
    }
}
