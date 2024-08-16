//
//  MinitaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//
import SwiftData
import SwiftUI

struct MinitaskDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var reminderDate = Date() // default to current date and time
    @EnvironmentObject var projectController: ProjectController // Use @EnvironmentObject if it's shared
    @Environment(\.modelContext) var context: ModelContext // access the ModelContext
    var minitask: Minitask // This should be a Minitask instead of Subtask
    var subtask: Subtask
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(minitask.name)
                .font(.title)
                .fontWeight(.bold)

            // Display information about the minitask
            Text("Step-by-step guide on how to complete this task:")
                .padding()

            // Date picker to choose when to schedule the notification
            DatePicker("Reminder Time", selection: $reminderDate, displayedComponents: [.date, .hourAndMinute])
                .padding()

            Spacer()

            // Button to set reminder and complete task
            Button(action: {
                // Schedule a notification for the minitask
                projectController.scheduleNotification(for: subtask, at: reminderDate)

                // Mark task as completed
                toggleMinitaskCompletion(minitask)

                // Navigate back
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Set Reminder and Complete Task")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
        .navigationTitle("Task Details")
        .padding()
    }

    // Toggles the completion status of a minitask
    private func toggleMinitaskCompletion(_ minitask: Minitask) {
        if let index = projectController.projects.firstIndex(where: { project in
            project.rooms.contains(where: { room in
                room.spaces.contains(where: { space in
                    space.subtasks.contains(where: { subtask in
                        subtask.minitasks.contains(where: { $0.id == minitask.id })
                    })
                })
            })
        }) {
            if let subtaskIndex = projectController.projects[index].rooms.flatMap({ $0.spaces }).flatMap({ $0.subtasks }).firstIndex(where: { $0.minitasks.contains(where: { $0.id == minitask.id }) }),
               let minitaskIndex = projectController.projects[index].rooms.flatMap({ $0.spaces }).flatMap({ $0.subtasks })[subtaskIndex].minitasks.firstIndex(where: { $0.id == minitask.id }) {
                projectController.projects[index].rooms.flatMap({ $0.spaces }).flatMap({ $0.subtasks })[subtaskIndex].minitasks[minitaskIndex].isCompleted.toggle()
                projectController.objectWillChange.send() // Notify that the data has changed
            }
        }
    }
}
