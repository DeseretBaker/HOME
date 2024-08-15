//
//  HappyOrganizedMeApp.swift
//  StartHereView
//
//  Created by Deseret Baker on 7/25/24.
//

import SwiftUI

struct StartHereView: View {
    @EnvironmentObject var projectViewModel: ProjectViewModel
    
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
                
                if let firstProject = projectViewModel.projects.first,
                   let firstRoom = firstProject.rooms.first,
                   let _ = firstRoom.spaces.first
                {
                    
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
            .environmentObject(ProjectViewModel()) // inject a preview-specific instance of ProjectViewModel
    }
}
