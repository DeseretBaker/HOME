//
//  AddSubtaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct AddSubTaskView: View {
    @Binding var subTasks: [SubTask]
    @State private var subTaskName: String = ""
    @State private var imageName: String = ""
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("SubTask Details")) {
                TextField("SubTask Name", text: $subTaskName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add SubTask") {
                let newSubTask = SubTask(name: subTaskName, imageName: imageName, miniTasks: [])
                subTasks.append(newSubTask)
            }
            
        }
        .navigationTitle("Add New SubTask")
    }
    
    
}


