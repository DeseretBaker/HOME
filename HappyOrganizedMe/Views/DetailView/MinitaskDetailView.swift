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
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false

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

            Text(miniTask.instructions)
                .padding(.bottom, 20)

            // List of checkable items
            ForEach(miniTask.checkableItems ?? [], id: \.id) { item in
                HStack {
                    Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            item.isCompleted.toggle()
                        }
                    Text(item.name)
                }
                .padding(.vertical, 5)
            }

            Spacer()

            Button(action: toggleCompletionStatus) {
                Text(miniTask.isCompleted ? "Mark as Incomplete" : "Mark as Complete")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(miniTask.isCompleted ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
            }
        }
        .navigationTitle("")
        .padding()
    }

    private func toggleCompletionStatus() {
        miniTask.isCompleted.toggle()
        
        do {
            try modelContext.save()
        } catch {
            print("Error saving context: \(error.localizedDescription)")
        }
    }
}
