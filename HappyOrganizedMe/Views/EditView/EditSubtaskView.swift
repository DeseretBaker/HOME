//
//  EditSubTaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import SwiftUI

struct EditSubTaskView: View {
    @Binding var subTask: SubTask
    @State private var subTaskName: String
    
    init(subTask: Binding<SubTask>) {
        self._subTask = subTask
        self._subTaskName = State(initialValue: subTask.wrappedValue.name)
    }

    var body: some View {
        Form {
            Section(header: Text("SubTask Details")) {
                TextField("SubTask Name", text: subTaskName)
            }
            
            Button("Save Changes") {
                subTask.name = subTaskName
            }
            .disabled(subTaskName.isEmpty)
        }
        .navigationTitle("Edit SubTask")
    }
}
