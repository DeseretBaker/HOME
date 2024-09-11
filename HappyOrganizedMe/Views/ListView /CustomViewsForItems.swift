//
//  CustomViewsForItems.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/10/24.
//

import Foundation
import SwiftUI

struct KitchenFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct LivingRoomFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct DiningRoomFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct BedroomFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct BathroomFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct OfficeFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct PlayroomFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct StorageFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
struct GarageFurnitureView<Item: Displayable>: View {
    var item: Item

    var body: some View {
        VStack {
            Text("Living Room - \(item.name)")
                .font(.largeTitle)
                .padding()

            Text(item.instructions)
                .font(.body)
                .padding()
        }
        .padding()
    }
}
