//
//  BaseProjectsView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import SwiftUI
import SwiftData

struct BaseProjectsView: View {
    @Environment(\.modelContext) private var modelContext
    @StateObject private var controller: BaseProjectsController
    @Query(sort: \Project.name, order: .forward) private var projects: [Project]
    
    init(modelContext: ModelContext) {
        _controller = StateObject(wrappedValue: BaseProjectsController(modelContext: modelContext))
    }
    
    var body: some View {
        List {
            ForEach(projects, id: \.id) { project in
                Text(project.name)
            }
        }
        .navigationTitle("Projects")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            if projects.isEmpty {
                fatalError("No projects found")
            }
        }
    }
}
