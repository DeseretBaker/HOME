//
//  MiniTaskDetailView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/5/24.
//
import SwiftData
import SwiftUI

struct MiniTaskDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var reminderDate = Date() // default to current date and time
    @EnvironmentObject var projectController: ProjectController // Use @EnvironmentObject if it's shared
    @Environment(\.modelContext) var context: ModelContext // access the ModelContext
    var miniTask: MiniTask // This should be a MiniTask instead of SubTask
    var subTask: SubTask
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(miniTask.name)
                .font(.title)
                .fontWeight(.bold)

            // Display information about the miniTask
            Text("Step-by-step guide on how to complete this task:")
                .padding()

            // Date picker to choose when to schedule the notification
            DatePicker("Reminder Time", selection: $reminderDate, displayedComponents: [.date, .hourAndMinute])
                .padding()

            Spacer()

            // Button to set reminder and complete task
            Button(action: {
                // Schedule a notification for the miniTask
                projectController.scheduleNotification(for: subTask, at: reminderDate)

                // Mark task as completed
                toggleMiniTaskCompletion(miniTask)

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

    // Toggles the completion status of a miniTask
    private func toggleMiniTaskCompletion(_ miniTask: MiniTask) {
        if let index = projectController.projects.firstIndex(where: { project in
            project.rooms.contains(where: { room in
                room.spaces.contains(where: { space in
                    space.subTasks.contains(where: { subTask in
                        subTask.miniTasks.contains(where: { $0.id == miniTask.id })
                    })
                })
            })
        }) {
            if let subTaskIndex = projectController.projects[index].rooms.flatMap({ $0.spaces }).flatMap({ $0.subTasks }).firstIndex(where: { $0.miniTasks.contains(where: { $0.id == miniTask.id }) }),
               let miniTaskIndex = projectController.projects[index].rooms.flatMap({ $0.spaces }).flatMap({ $0.subTasks })[subTaskIndex].miniTasks.firstIndex(where: { $0.id == miniTask.id }) {
                projectController.projects[index].rooms.flatMap({ $0.spaces }).flatMap({ $0.subTasks })[subTaskIndex].miniTasks[miniTaskIndex].isCompleted.toggle()
                projectController.objectWillChange.send() // Notify that the data has changed
            }
        }
    }
}
