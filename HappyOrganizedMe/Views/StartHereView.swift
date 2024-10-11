//
//  HappyOrganizedMeApp.swift
//  StartHereView
//
//  Created by Deseret Baker on 7/25/24.
//

import SwiftUI

struct StartHereView: View {
    @Environment(\.modelContext) private var modelContext
    @Binding var hasClickedStartHereButton: Bool
    var body: some View {
        ZStack {
            // Background image setup
            Image("home")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            // Foreground content
            VStack(spacing: 20) {
                // "HO" text with outline
                ZStack {
                    Text("HO")
                        .font(outlineHeaderFont)
                        .foregroundColor(.black) // Outline color
                        .offset(x: 2, y: 2) // Slight offset to create outline effect
                    
                    Text("HO")
                        .font(headerFont)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                }
                .padding()

                // "ME" text with outline
                ZStack {
                    Text("ME")
                        .font(outlineHeaderFont)
                        .foregroundColor(.black) // Outline color
                        .offset(x: 2, y: 2) // Slight offset to create outline effect
                    
                    Text("ME")
                        .font(headerFont)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                }
                .padding()
                
                // Start button
                Button(action: {
                    hasClickedStartHereButton.toggle()
                }, label: {
                    Text("Start Here")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: 200, minHeight: 50)
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1))
                })
                .padding(.horizontal)
                .buttonStyle(.bordered)
            }
            .padding()
        }
    }
    
    // Custom font styling function
    private var headerFont: Font {
        .system(size: 125)
    }
    
    // Outline font styling function (slightly larger for outline effect)
    private var outlineHeaderFont: Font {
        .system(size: 130) // Slightly larger size for the outline
    }
}

struct StartHereView_Previews: PreviewProvider {
    static var previews: some View {
        StartHereView(hasClickedStartHereButton: .constant(false))
    }
}
