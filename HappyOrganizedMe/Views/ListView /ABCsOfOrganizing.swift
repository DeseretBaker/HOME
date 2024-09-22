//
//  ABCsOfOrganizing.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/21/24.
//

import Foundation
import SwiftUI

struct ABCOrganizingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("B is for Baskets and Bins")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            Image("baskets_and_bins") // Ensure you have this image in your assets
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)
                .padding(.bottom)
            
            Text("Baskets and bins are a fantastic way to keep your items organized and easily accessible. Use them in every room to corral loose items and keep your space looking tidy.")
                .font(.body)
                .padding(.bottom)
            
            // Tips for Using Baskets and Bins
            VStack(alignment: .leading, spacing: 10) {
                Text("🔹 **Use Clear Bins** for visibility.")
                Text("🔹 **Label Your Baskets** to always know what's inside.")
                Text("🔹 **Choose Sizes** that fit your shelves and spaces.")
                Text("🔹 **Sort by Category** to make finding things easy.")
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            
            Spacer()
        }
        .padding()
        .navigationTitle("B is for Baskets and Bins")
    }
}
