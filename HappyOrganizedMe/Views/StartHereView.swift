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
            Image("kitchen3")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            // Foreground content
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
                
                // Start button
                Button(action: {
                    hasClickedStartHereButton.toggle()
                }, label: {
                    Text("Start Here")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: 225, minHeight: 50)
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
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
}

struct StartHereView_Previews: PreviewProvider {
    static var previews: some View {
        StartHereView(hasClickedStartHereButton: .constant(false))
    }
}
