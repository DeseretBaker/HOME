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
    var checkableItems: [CheckableItem]
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
            
            //Text("Instructions: \($miniTask.instruction)")
            //   .padding(.bottom, 20)
            
            // display the checkable items
            ForEach($miniTask.checkableItems) { $item in
                HStack {
                    Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "checkmark.circle")
                        .onTapGesture {
                            item.isCompleted.toggle() }
                    Text(item.name)
                }
                .padding(.vertical, 5)
            }
            
            Spacer()
            
            Button(action: {
                miniTask.toggleCompleted()
            }) {
                Text(miniTask.isCompleted ? "Mark as Incomplete" : "Mark as Complete")
                    
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(miniTask.isCompleted ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
        .navigationTitle("Get Down & Dirty")
        .padding()
    }
}

