//
//  SubTaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftUI

struct SubTaskDetailView: View {
    var subTask: SubTask
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Detail view for \(subTask.name)")
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            Text("MiniTasks for this subTask:")
                .font(.headline)
            
            List {
                ForEach(subTask.miniTasks) { miniTask in
                    NavigationLink(destination: MiniTaskDetailView(miniTask: miniTask, subTask: subTask)) {
                        Text(miniTask.name)
                    }
                }
            }
            
            // Add more detailed subTask information here
            
            Spacer()
        }
        .padding()
        .navigationTitle("SubTask Details")
    }
}
