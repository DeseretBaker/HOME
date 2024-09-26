//
//  SubTaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct SubTaskDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var subTask: SubTask  // Property to track changes in subtask data
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    @State private var showingInfo = false
    @State private var selectedMiniTask: MiniTask?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // subTask header
                VStack(alignment: .leading, spacing: 10) {
                    Image(subTask.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 125)
                        .clipped()
                        .cornerRadius(10)
                    
                    Text(subTask.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(subTask.usageDescription)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                ProgressView(value: subTask.progress, total: 100)
                    .progressViewStyle(LinearProgressViewStyle(tint: .teal))
                    .padding(.vertical, 10)
                
                HStack {
                    Text("Progress: \(String(format: "%.0f", subTask.progress))%")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("Status: \(subTask.isCompleted ? "Completed" : "In Progress")")
                        .font(.subheadline)
                        .foregroundColor(subTask.isCompleted ? .green : .orange)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding([.leading, .trailing])
            
            Text("MiniTasks")
                .font(.headline)
                .padding(.leading)
            
            // Checkable list for minitasks
            ForEach($subTask.miniTasks, id: \.id) { $miniTask in
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
                    
                    // Info button
                    Button(action: {
                        selectedMiniTask = miniTask
                        showingInfo.toggle()
                    }) {
                        Image(systemName: "info.circle")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.vertical, 5)
                .padding(.horizontal)
            }
        }
        .navigationTitle("Bite-sized Tasks")
        .toolbar {
            // toolbar or other actions go here.
        }
        .alert(isPresented: $showingInfo) {
            Alert(
                title: Text(selectedMiniTask?.name ?? "MiniTask Info"), message: Text(selectedMiniTask?.instructions ?? "No instructions available."), dismissButton: .default(Text("OK"))
                )
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

