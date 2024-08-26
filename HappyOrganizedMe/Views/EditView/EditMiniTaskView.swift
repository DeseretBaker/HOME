//
//  EditMiniTaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct EditMiniTaskView: View {
    @Binding var miniTask: MiniTask
    @State private var miniTaskName: String

    init(miniTask: Binding<MiniTask>) {
        self._miniTask = miniTask
        self._miniTaskName = State(initialValue: miniTask.wrappedValue.name)
    }

    var body: some View {
        Form {
            Section(header: Text("MiniTask Details")) {
                TextField("MiniTask Name", text: miniTaskName)
            }
            
            Button("Save Changes") {
                miniTask.name = miniTaskName
            }
            .disabled(miniTaskName.isEmpty)
        }
        .navigationTitle("Edit MiniTask")
    }
}

