//
//  MiniTaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//

import SwiftUI
import SwiftData

struct MiniTaskDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var miniTask: MiniTask

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(miniTask.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 125)
                .clipped()
                .cornerRadius(10)
            
            Text(miniTask.name)
                .font(.title)
                .fontWeight(.bold)

            Text("Step-by-step guide on how to complete this task:")
                .padding(.bottom, 20)

            Spacer()

            Button(action: toggleCompletionStatus) {
                Text(miniTask.isCompleted ? "Mark as Incomplete" : "Mark as Complete")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(miniTask.isCompleted ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
        .navigationTitle("Task Details")
        .padding()
    }

    private func toggleCompletionStatus() {
        miniTask.isCompleted.toggle() // Directly toggle the property
        
        do {
            try modelContext.save()  // Save changes to the context
        } catch {
            print("Error saving context: \(error.localizedDescription)")
        }
    }
}
