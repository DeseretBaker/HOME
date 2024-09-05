//
//  ProfileView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/4/24.
//

import Foundation
import SwiftUI
import SwiftData

struct ProfileView: View {
    @State private var username: String = "John Doe" // Example static username
    @State private var email: String = "johndoe@example.com" // Example static email

    var body: some View {
        VStack(spacing: 20) {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)

            HStack {
                Text("Username:")
                    .font(.headline)
                Spacer()
                Text(username)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            HStack {
                Text("Email:")
                    .font(.headline)
                Spacer()
                Text(email)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            Spacer() // Push content to top

        }
        .padding()
        .navigationTitle("Profile")
    }
}
