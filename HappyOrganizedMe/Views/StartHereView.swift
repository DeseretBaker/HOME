//
//  StartHereView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import SwiftUI

struct StartHereView: View {
    var body: some View {
        // NavigationView wraps the entire UI to provide navigation capabilities within the app.
        NavigationView {
            // arranges the elements verically
            VStack {
                Spacer()
                Text("HO")
                // use a custom font size larger than .largeTitle
                    .font(.system(size: 125, weight: .bold))
                    .accessibility(label: ("HO"))
                Text("ME")
                    .font(.system(size: 125, weight: .bold))
                    .accessibility(label: ("ME"))
                Text("PROJECT")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.teal)
                    .accessibility(label: Text("Project"))
   // the button-like NavigationLink takes the user to the ProjectsListView when tapped.
                NavigationLink(destination: ProjectsListView()) {
                    Text("Start Here")
                        .font(.title)
                        .padding()
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(style: StrokeStyle(lineWidth: 2, dash: [3]
                            )
                        )
                                .foregroundColor(.black)
                    )
                }
                .accessibility(label: Text("Start Here"))
                
                Spacer()
            }
            .padding(.horizontal) // adding padding to handle layout on various screen sizes
        }
        .navigationViewStyle(StackNavigationViewStyle()) // helps with layout consistency across different devices
    }
}

