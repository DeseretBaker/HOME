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
    var type: String { get } // Type of room or category (e.g., "LivingRoom", "Kitchen")
    var category: String { get } // Category of item within the type (e.g., "Furniture", "Appliances")
}

struct CardView<Item: Displayable>: View {
    var item: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
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
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .accessibilityElement(children: .combine)
            .accessibilityLabel("\(item.name), Progress: \(String(format: "%.0f", item.progress))%, \(item.isCompleted ? "Completed" : "In Progress")")
            
        }
    }

