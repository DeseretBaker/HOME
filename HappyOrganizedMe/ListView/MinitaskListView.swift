//import SwiftUI
//
//struct MiniTaskListView: View {
//    let subTask: SubTask
//    @Environment(\.editMode) private var editMode // Use environment edit mode
//
//    var body: some View {
//        List {
//            if subTask.miniTasks.isEmpty {
//                Text("No miniTasks available")
//                    .foregroundColor(.gray)
//            } else {
//                ForEach(subTask.miniTasks) { miniTask in
//                    MiniTaskRowView(miniTask: miniTask, isEditing: editMode?.wrappedValue == .active)
//                }
//                .onDelete(perform: deleteMiniTask)
//            }
//        }
//        .navigationTitle("\(subTask.name) MiniTasks")
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                EditButton() // Automatically toggles the environment edit mode
//            }
//        }
//    }
//    
//    private func deleteMiniTask(at offsets: IndexSet) {
//        withAnimation {
//            subTask.miniTasks.remove(atOffsets: offsets)
//        }
//    }
//}
//
//struct MiniTaskRowView: View {
//    var miniTask: MiniTask // Directly use miniTask instead of @Binding
//    var isEditing: Bool
//    
//    var body: some View {
//        HStack {
//            Text(miniTask.name)
//            Spacer()
//            if isEditing {
//                Button(action: {
//                    // Toggle completion status
//                    miniTask.isCompleted.toggle()
//                }) {
//                    Image(systemName: miniTask.isCompleted ? "checkmark.circle.fill" : "circle")
//                        .foregroundColor(miniTask.isCompleted ? .green : .gray)
//                }
//            }
//        }
//    }
//}
