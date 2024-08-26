//
//  AddSpaceView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct AddSpaceView: View {
    @Binding var spaces: [Space]
    @State private var spaceName: String = ""
    @State private var imageName: String = ""
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("Space Details")) {
                TextField("Space Name", text: $spaceName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add Space") {
                let newSpace = Space(name: spaceName, imageName: imageName, roomDescription: nil, subTasks: [])
                spaces.append(newSpace)
            }
            
        }
        .navigationTitle("Add New Space")
    }
    
    
}


