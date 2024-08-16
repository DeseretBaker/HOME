//
//  TaskCard.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/9/24.
//

import Foundation
import SwiftUI

struct TaskCard: View {
    var title: String
    var progress: Double  // Use progress to determine completion

    var body: some View {
        HStack {
            Image(systemName: progress == 1.0 ? "checkmark.circle.fill" : "circle")
                .foregroundColor(progress == 1.0 ? .green : .gray)
            Text(title)
                .font(.headline)
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct TaskCard_Previews: PreviewProvider {
    static var previews: some View {
        TaskCard(title: "Organize Pantry", progress: 0.5)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
