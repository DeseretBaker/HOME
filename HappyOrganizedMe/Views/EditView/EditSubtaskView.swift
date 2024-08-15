//
//  EditSubtaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import SwiftUI

struct EditSubtaskView: View {
    @Binding var subtask: Subtask
    @State private var subtaskName: String
    
    init(subtask: Binding<Subtask>) {
        self._subtask = subtask
        self._subtaskName = State(initialValue: subtask.wrappedValue.name)
    }

    var body: some View {
        Form {
            Section(header: Text("Subtask Details")) {
                TextField("Subtask Name", text: $subtaskName)
            }
            
            Button("Save Changes") {
                subtask.name = subtaskName
            }
            .disabled(subtaskName.isEmpty)
        }
        .navigationTitle("Edit Subtask")
    }
}
