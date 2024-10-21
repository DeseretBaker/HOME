//
//  ContentView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/3/24.
//
import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    private var projectController: ProjectController = .shared
    @State private var hasTappedStartHere: Bool = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        Group {
            if hasTappedStartHere {
                ProjectSelectionView() // This is where we go after the Start button is clicked
            } else {
                // Choose layout based on device size
                if horizontalSizeClass == .regular {
                    iPadStartView(hasClickedStartHereButton: $hasTappedStartHere)
                } else {
                    iPhoneStartView(hasClickedStartHereButton: $hasTappedStartHere)
                }
            }
        }
        .animation(.easeInOut, value: hasTappedStartHere) // Add transition animation
    }
}

struct iPadStartView: View {
    @Binding var hasClickedStartHereButton: Bool
    var body: some View {
        GeometryReader { geometry in
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
                            .font(outlineHeaderFont(geometry))
                            .foregroundColor(.black) // Outline color
                            .offset(x: 2, y: 2) // Slight offset to create outline effect
                        
                        Text("HO")
                            .font(headerFont(geometry))
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                    }
                    .padding()
                    
                    // "ME" text with outline
                    ZStack {
                        Text("ME")
                            .font(outlineHeaderFont(geometry))
                            .foregroundColor(.black) // Outline color
                            .offset(x: 2, y: 2) // Slight offset to create outline effect
                        
                        Text("ME")
                            .font(headerFont(geometry))
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                    }
                    .padding()
                    
                    // Start button
                    Button(action: {
                        withAnimation {
                            hasClickedStartHereButton = true
                        }
                    }) {
                        Text("Start")
                            .font(.system(size: geometry.size.width / 15))
                            .bold()
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .padding()
                            .frame(maxWidth: 200, minHeight: 50)
                            .background(Color.teal)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1))
                    }
                    .padding(.horizontal)
                    .buttonStyle(.bordered)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        }
    }
}
   
struct iPhoneStartView: View {
    @Binding var hasClickedStartHereButton: Bool
        
        var body: some View {
            GeometryReader { geometry in
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
                                .font(outlineHeaderFont(geometry))
                                .foregroundColor(.black) // Outline color
                                .offset(x: 2, y: 2) // Slight offset to create outline effect
                            
                            Text("HO")
                                .font(headerFont(geometry))
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                        }
                        .padding()
                        
                        // "ME" text with outline
                        ZStack {
                            Text("ME")
                                .font(outlineHeaderFont(geometry))
                                .foregroundColor(.black) // Outline color
                                .offset(x: 2, y: 2) // Slight offset to create outline effect
                            
                            Text("ME")
                                .font(headerFont(geometry))
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                        }
                        .padding()
                        
                        // Start button
                        Button(action: {
                            withAnimation {
                                hasClickedStartHereButton = true
                            }
                        }) {
                            Text("Start")
                                .font(.system(size: geometry.size.width / 15))
                                .bold()
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .padding()
                                .frame(maxWidth: 200, minHeight: 50)
                                .background(Color.teal)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1))
                        }
                        .padding(.horizontal)
                        .buttonStyle(.bordered)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
        }
    }
    private func headerFont(_ geometry: GeometryProxy) -> Font {
        geometry.size.width > 600 ? .system(size: 130) : .system(size: 90)
    }
    
    private func outlineHeaderFont(_ geometry: GeometryProxy) -> Font {
        geometry.size.width > 600 ? .system(size: 130) : .system(size: 90)
    }

    
  
