//  ProjectListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//
import SwiftUI
import SwiftData

struct ProjectListView: View {
    @EnvironmentObject var projectController: ProjectController

    private let columns = [
        GridItem(.adaptive(minimum: 120))
    ]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(BaseProjects.shared.projects) { project in
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
    }

    // Function to create a grid item view for a project
    @ViewBuilder
    private func projectGridItem(project: Project) -> some View {
        
            ZStack {
                Image(project.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .cornerRadius(10)
                    .clipped()

                Text(project.name)
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
            }
            .frame(height: 120)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }

