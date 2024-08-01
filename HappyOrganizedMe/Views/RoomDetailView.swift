//
//  RoomDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 7/30/24.
//

import SwiftUI

struct RoomDetailView: View {
    @EnvironmentObject var projectViewModel: ProjectViewModel
    var room: Room

    var body: some View {
        VStack(alignment: .leading) {
            // Room Name
            Text(room.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            // Room Description
            Text(room.description)
                .font(.body)
                .foregroundColor(.gray)
                .padding(.bottom, 20)
            
            // List of Tasks
            Text("Tasks")
                .font(.headline)
                .padding(.bottom, 5)

            List {
                ForEach(room.tasks) { task in
                    TaskRowView(task: task)
                }
                .onDelete(perform: deleteTask)
            }
            
            Spacer()
            
            // Add Task Button
            Button(action: {
                // Action to add a new task
            }) {
                HStack {
                    Image(systemName: "plus.circle")
                    Text("Add Task")
                }
                .font(.title2)
                .padding()
                .foregroundColor(.white)
                .background(Color.teal)
                .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .padding()
        .navigationTitle(room.name)
        .navigationBarTitleDisplayMode(.inline)
    }

    // Function to delete a task
    func deleteTask(at offsets: IndexSet) {
        projectViewModel.deleteTask(at: offsets, from: room)
    }
}

struct TaskRowView: View {
    var task: Task

    var body: some View {
        NavigationLink(destination: TaskDetailView(task: task)) {
            Text(task.name)
        }
    }
}

struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView(room: Room.example)
            .environmentObject(ProjectViewModel())
    }
}
