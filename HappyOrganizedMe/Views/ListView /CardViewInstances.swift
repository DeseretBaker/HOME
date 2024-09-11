//
//  CardViewInstances.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/10/24.
//

import Foundation
import SwiftUI

struct LivingRoomView: View {
    var items: [Item] // Pass the living room items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Living Room")
    }
}
struct KitchenView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
struct DiningRoomView: View {
    var items: [Item]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Dining Room")
    }
}
struct BedroomView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
struct BathroomView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
struct OfficeView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
struct PlayroomView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
struct StorageView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
struct GarageView: View {
    var items: [Item] // Pass the kitchen items into the view

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            .padding()
        }
        .navigationTitle("Kitchen")
    }
}
