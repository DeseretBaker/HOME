//
//  SubTaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct SubTaskDetailView: View {
    @Environment(\.modelContext) private var modelContext
    
    let subTask: SubTask
    var subTaskType: SubTaskTypeBox {
        subTask.subTaskType ??  .bathroom(.bathingSpaces)}
    
    // Track the selected mini-task for instructions or usage description
    @State private var selectedMiniTaskForInstructions: MiniTask?
    @State private var selectedMiniTaskForUsageDescription: MiniTask?

    
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: UIScreen.main.bounds.width > 768 ? 200 : 100), spacing: 16)]
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // subTask header
                VStack(alignment: .leading, spacing: 10) {
                    Image(subTask.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 150)
                        .clipped()
                        .cornerRadius(10)
                    
                    Text(subTask.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(subTask.usageDescription)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 2)
            .padding([.leading, .trailing])
            
            Text("If you can't see it in your future, don't keep it in your present!")
                .font(.headline)
                .padding()
            
            // Checkable list for miniTasks
            ForEach(subTask.miniTasks ?? [], id: \.id) { miniTask in
                HStack {
                    Image(systemName: miniTask.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            withAnimation {
                                toggleMiniTaskCompletion(miniTask: miniTask)
                            }
                        }
                    Text(miniTask.name)
                        .strikethrough(miniTask.isCompleted, color: .gray)
                        .animation(.default, value: miniTask.isCompleted)
                    Spacer()
                    HStack(spacing: 10) {
                        
                        // Show the instructions sheet for the specific mini-task
                        Button(action: {
                            selectedMiniTaskForInstructions = miniTask
                        }) {
                            AnimatedBullseyeView1()
                                .font(.footnote)
                                .frame(minWidth: 30, maxWidth: 80)
                                .padding(5)
                                .background(Color.teal)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .sheet(item: $selectedMiniTaskForInstructions) { miniTask in
                            InstructionSheetView(title: "How & Why", content: miniTask.instructions)
                                .presentationDetents([.fraction(0.3), .medium, .large]) // Allows both medium and large sizes
                                .presentationDragIndicator(.visible) // Shows a drag indicator
                        }
                    
                        // Show the usage description sheet for the specific mini-task
                        Button(action: {
                            selectedMiniTaskForUsageDescription = miniTask
                        }) {
                            AnimatedBullseyeView2()
                                .font(.footnote)
                                .frame(minWidth: 30, maxWidth: 80)
                                .padding(5)
                                .background(Color.teal)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .sheet(item: $selectedMiniTaskForUsageDescription) { miniTask in
                            UsageDescriptionSheetView(title: "Why & How", content: miniTask.usageDescription)
                                .presentationDetents([.fraction(0.3), .medium, .large]) // Allows both medium and large sizes
                                .presentationDragIndicator(.visible) // Shows a drag indicator
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .accessibilityElement(children: .combine)
                .accessibilityLabel("\(miniTask.name), Progress: \(String(format: "%.0f", miniTask.progress))%, \(miniTask.isCompleted ? "Completed" : "In Progress")")
            }
        }
        .navigationTitle("Bite-sized Tasks")
        .toolbar {
            // toolbar or other actions go here.
        }
    }
    
    // Toggle the completion status of a MiniTask and save the context
    private func toggleMiniTaskCompletion(miniTask: MiniTask) {
        miniTask.isCompleted.toggle()
        saveContext()
    }
    
    // Save the context and handle any errors
    private func saveContext() {
        do {
            try modelContext.save() // Save changes to the context
        } catch {
            print("Error saving context: \(error.localizedDescription)")
            // Optionally, show an alert or handle the error in the UI
        }
    }
}
import SwiftUI

// This view will display the usage description of the MiniTask
struct UsageDescriptionSheetView: View {
    let title: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(content)
                .font(.body)
            
            Spacer()
        }
        .padding()
    }
}

