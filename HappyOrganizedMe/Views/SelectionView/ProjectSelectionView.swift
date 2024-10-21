//
//  ProjectSelectionView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/6/24.
//

import SwiftData
import SwiftUI

struct ProjectSelectionView: View {
    @ObservedObject var projectController = ProjectController.shared
    @Environment(\.modelContext) private var modelContext
    
    @State private var showInstructionsSheet = false
    @State private var showUsageDescriptionSheet = false
    
    var body: some View {
        NavigationView {
            if projectController.isLoading {
                ProgressView("Loading projects...")
                    .progressViewStyle(CircularProgressViewStyle())
                    .padding()
            } else {
                ScrollView {
                    if projectController.projects.isEmpty {
                        VStack {
                            Text("No projects available.")
                                .font(.title)
                                .padding()
                            
                            // Button to load base projects or create a new one
                            Button(action: {
                                projectController.loadBaseProjects()
                            }) {
                                Text("Create New Project")
                                    .font(.headline)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding(.top, 20)
                        }
                    } else {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                            ForEach(projectController.projects) { project in
                                NavigationLink(destination: ProjectDetailView(project: project)) {
                                    CardView(item: project)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding()
                    }
                }
                .navigationTitle("Make the first move")
            }
        }
        .onAppear {
            if projectController.projects.isEmpty {
                projectController.setModelContext(modelContext)
            }
        }
    }
}
