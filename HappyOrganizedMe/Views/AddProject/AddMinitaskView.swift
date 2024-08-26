//
//  AddMinitaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct AddMiniTaskView: View {
    @Binding var miniTasks: [MiniTask]
    @State private var miniTaskName: String = ""
    @State private var imageName: String = ""
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("MiniTask Details")) {
                TextField("MiniTask Name", text: $miniTaskName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add MiniTask") {
                let newMiniTask = MiniTask(name: miniTaskName, imageName: imageName)
                miniTasks.append(newMiniTask)
            }
            
        }
        .navigationTitle("Add New MiniTask")
    }
    
    
}



