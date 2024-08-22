//
//  TaskCard.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/9/24.
//

import SwiftUI

struct TaskCard: View {
    var title: String
    var imageName: String
    var progress: Double  // Use progress to determine completion
    var isComplete: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {  // Set spacing to 0 to make elements stick together
            ZStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 110)
                    .cornerRadius(10)
                    .shadow(radius: 5)  // Only shadow, no background color
                
                // Center the title on the image, the name of the project
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(15)
                    .cornerRadius(5)
            }
            .frame(width: 160, height: 105)  // Ensure the ZStack has the same size as the image
            
            VStack(alignment: .center, spacing: 10) {
                HStack {
                    Circle()
                        .fill(isComplete ? Color.green : Color.red)
                        .frame(width: 10, height: 10)
                    Text(isComplete ? "Complete" : "Incomplete")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    .disabled(true)  // Disable interaction for display only
                    .foregroundColor(.white)
                }
                .padding(10)
                .background(Color.teal.opacity(0.75))
                .cornerRadius(10)
                
                ProgressView(value: progress)
                    .progressViewStyle(LinearProgressViewStyle())
                    .padding(.horizontal, 5)
            }
            .frame(width: 160, height: 65)  // Match the width of the status bar to the image
        }
    }
}

struct TaskCard_Previews: PreviewProvider {
    static var previews: some View {
        TaskCard(title: "Pantry", imageName: "Pantry", progress: 0.5, isComplete: false)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
