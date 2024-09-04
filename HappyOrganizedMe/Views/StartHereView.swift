//
//  HappyOrganizedMeApp.swift
//  StartHereView
//
//  Created by Deseret Baker on 7/25/24.
//

import SwiftUI

struct StartHereView: View {
    @Environment(\.modelContext) private var modelContext
    @EnvironmentObject var projectController: ProjectController
    
    var body: some View {
        ZStack {
            // background image
            Image("kitchen3")
                .resizable()
                .scaledToFill() // fills the entire background
                .edgesIgnoringSafeArea(.all) // extend the image to the edges
            
            // foreground content
            VStack(spacing: 20) {
                // header section
                Text("HO")
                    .font(headerFont)
                    .foregroundColor(.white)
                    .padding()
                Text("ME")
                    .font(headerFont)
                    .foregroundColor(.white)
                    .padding()
                
               NavigationLink(destination: ProjectSelectionView()) {
                    Text("Start Here")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: 225, minHeight: 50)
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1))
                }
                .padding(.horizontal)
                .buttonStyle(.bordered)
                
            }
            .padding()
        }
    }
    // custom font styling function
    private var headerFont: Font{
        .system(size: 125, design: .default)
    }
}
    
    
