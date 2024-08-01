//
//  StartHereView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import UIKit

struct StartHereView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Happy Organized Me")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: ProjectsListView()) {
                    Text("Start Here")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
/*
 // Only override draw() if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 override func draw(_ rect: CGRect) {
 // Drawing code
 }
 */


