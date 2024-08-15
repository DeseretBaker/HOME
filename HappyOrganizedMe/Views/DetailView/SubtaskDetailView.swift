//
//  SubtaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct SubtaskDetailView: View {
    var subtask: Subtask
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Detail view for \(subtask.name)")
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            Text("Mini-tasks for this subtask:")
                .font(.headline)
            
            List {
                ForEach(subtask.minitasks) { minitask in
                    NavigationLink(destination: MinitaskDetailView(minitask: minitask, subtask: subtask)) {
                        Text(minitask.name)
                    }
                }
            }
            
            // Add more detailed subtask information here
            
            Spacer()
        }
        .padding()
        .navigationTitle("Subtask Details")
    }
}
