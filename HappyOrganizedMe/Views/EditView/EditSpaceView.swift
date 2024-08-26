//
//  EditSpaceView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/11/24.
//

import Foundation
import SwiftUI

struct EditSpaceView: View {
    @Binding var space: Space
    @State private var spaceName: String

    init(space: Binding<Space>) {
        self._space = space
        self._spaceName = State(initialValue: space.wrappedValue.name)
    }

    var body: some View {
        Form {
            Section(header: Text("Space Details")) {
                TextField("Space Name", text: $spaceName)
            }
            
            Button("Save Changes") {
                space.name = spaceName
            }
            .disabled(spaceName.isEmpty)
        }
        .navigationTitle("Edit Space")
    }
}
