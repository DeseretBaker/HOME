////
////  SubTaskListView.swift
////  HappyOrganizedMe
////
////  Created by Deseret Baker on 8/4/24.
////
//
//import SwiftUI
//
//struct SubTaskListView: View {
//    var space: Space // The space that contains subTasks
//    
//    var body: some View {
//        List {
//            ForEach(space.subTasks) { subTask in
//                NavigationLink(destination: MiniTaskListView(subTask: subTask)) {
//                   
//                }
//            }
//        }
//        .listStyle(InsetGroupedListStyle()) // gives the list a modern grouped style
//        .navigationTitle(space.name)  // sets the navigation bar title to the space's name
//    }
//}
