//
//  HappyOrganizedMeApp.swift
//  StartHereView
//
//  Created by Deseret Baker on 7/25/24.
//

import SwiftUI

struct StartHereView: View {
    @Environment(\.modelContext) private var modelContext

    @EnvironmentObject var controller: ProjectController
    
    var body: some View {
        ZStack {
            // background image
            Image("Kitchen3")
                .resizable()
                .scaledToFill() // fills the entire background
                .edgesIgnoringSafeArea(.all) // extend the image to the edges
            
            // foreground content
            VStack(spacing: 20) {
                // header section
                Text("HO")
                    .font(.system(size: 125))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                Text("ME")
                    .font(.system(size: 125))
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                
                if !controller.projects.isEmpty,
                   let firstProject = controller.projects.first,
                   !firstProject.rooms.isEmpty,
                   let firstRoom = firstProject.rooms.first,
                   !firstRoom.spaces.isEmpty {
                    
                    NavigationLink(destination: ProjectSelectionView()) {
                        Text("Start Here")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .frame(idealHeight: 50)
                            .background(Color.teal)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    .buttonStyle(.borderedProminent)
                    
                } else {
                    // Show "Reload Projects" button if no projects are available
                    Button("Reload Projects") {
                        controller.loadBaseProjects()
                    }
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Text("No projects available")
                        .padding()
                        .frame(idealHeight: 50)
                        .background(Color.red.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct StartHereView_Previews: PreviewProvider {
    static var previews: some View {
        StartHereView()
            .environmentObject(ProjectController.shared) // inject a preview-specific instance of projectController
    }
}
