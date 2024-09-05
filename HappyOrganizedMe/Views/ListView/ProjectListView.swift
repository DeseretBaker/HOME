//  ProjectListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//
import SwiftUI
import SwiftData

struct ProjectListView: View {
    var projectController = ProjectController.shared

    private let columns = [
        GridItem(.adaptive(minimum: 110))
    ]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(projectController.projects) { project in
                            NavigationLink(destination: RoomListView(project: project)) {
                                projectGridItem(project: project)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Projects")
                .navigationBarTitleDisplayMode(.large)
            }
        }
        .onAppear {
            // Ensure projects are loaded when view appears
            projectController.loadProjects()
        }
    }

    // Function to create a grid item view for a project
    @ViewBuilder
    private func projectGridItem(project: Project) -> some View {
        ZStack {
            Image(project.imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 110)
                .cornerRadius(10)
                .clipped()

            Text(project.name)
                .bold()
                .font(.title)
                .foregroundColor(.white)
                .shadow(radius: 5)
        }
        .frame(height: 110)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
