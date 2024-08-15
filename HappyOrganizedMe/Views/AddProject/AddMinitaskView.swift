//
//  AddMinitaskView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/12/24.
//

import Foundation
import SwiftUI

struct AddMinitaskView: View {
    @Binding var minitasks: [Minitask]
    @State private var minitaskName: String = ""
    @State private var imageName: String = ""
    // Optional image name  for custom projects
    
    var body: some View {
        Form {
            Section(header: Text("Minitask Details")) {
                TextField("Minitask Name", text: $minitaskName)
                TextField("Image Name",text: $imageName)
            }
            Button("Add Minitask") {
                let newMinitask = Minitask(name: minitaskName, imageName: imageName)
                minitasks.append(newMinitask)
            }
            
        }
        .navigationTitle("Add New Minitask")
    }
    
    
}



