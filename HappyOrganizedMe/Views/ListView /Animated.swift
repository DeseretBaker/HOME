//
//  Animated.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/26/24.
//

import Foundation
import SwiftUI

import SwiftUI

struct AnimatedBullseyeView: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            // Outer Circle
            Circle()
                .strokeBorder(Color.gray, lineWidth: 8)
                .frame(width: 150, height: 150)
                .scaleEffect(animate ? 1.2 : 1.0)
                .opacity(animate ? 0.5 : 1.0)
                .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: animate)
            
            // Middle Circle
            Circle()
                .strokeBorder(Color.white, lineWidth: 6)
                .frame(width: 100, height: 100)
                .scaleEffect(animate ? 1.1 : 1.0)
                .opacity(animate ? 0.5 : 1.0)
                .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: animate)
            
            // Inner Circle
            Circle()
                .fill(Color.white)
                .frame(width: 50, height: 50)
        }
        .onAppear {
            animate = true
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        AnimatedBullseyeView()
//            .frame(width: 200, height: 200)
//    }
//}
