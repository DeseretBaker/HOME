//
//  CardView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/9/24.
//
import SwiftUI

protocol Displayable {
    var name: String { get }
    var imageName: String { get }
    var progress: Double { get }
    var isCompleted: Bool { get }
}

struct CardView<Item: Displayable>: View {
    var item: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if !item.imageName.isEmpty {
                Image(item.imageName)
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
        .accessibilityLabel("\(item.name), Progress: \(String(format: "%.0f", item.progress))%")
    }
}
