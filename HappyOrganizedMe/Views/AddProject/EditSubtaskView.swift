//
//  AddSubtaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct AddSubtaskView: View {
    @Binding var subtasks: [Subtask]
    @State private var subtaskName: String = ""
    @State private var imageName: String = ""
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("Subtask Details")) {
                TextField("Subtask Name", text: $subtaskName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add Subtask") {
                let newSubtask = Subtask(name: subtaskName, imageName: imageName, minitasks: [])
                subtasks.append(newSubtask)
            }
            
        }
        .navigationTitle("Add New Subtask")
    }
    
    
}


