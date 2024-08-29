//
//  ProjectView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import Foundation
import SwiftUI

struct ProjectView: View {
    let project: RoomProject
    
    var body: some View {
        ZStack {
            // project image
            Image(project.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipped() // Ensures the image fits within the frame
            // Project name overlay
            Text(project.name)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
                .padding([.bottom,.trailing], 10)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing) // position in bottom right corner
        }
        .cornerRadius(15)  // round the corners of the entire ZStack
        .shadow(radius: 5)  // add some shadow
    }
}

