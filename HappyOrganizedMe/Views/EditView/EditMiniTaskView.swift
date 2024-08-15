//
//  EditMiniTaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct EditMinitaskView: View {
    @Binding var minitask: Minitask
    @State private var minitaskName: String

    init(minitask: Binding<Minitask>) {
        self._minitask = minitask
        self._minitaskName = State(initialValue: minitask.wrappedValue.name)
    }

    var body: some View {
        Form {
            Section(header: Text("Minitask Details")) {
                TextField("Minitask Name", text: $minitaskName)
            }
            
            Button("Save Changes") {
                minitask.name = minitaskName
            }
            .disabled(minitaskName.isEmpty)
        }
        .navigationTitle("Edit Minitask")
    }
}

