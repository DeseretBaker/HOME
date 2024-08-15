//
//  ProjectListView.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/1/24.
//

import SwiftUI
import CoreData

struct ProjectListView: View {
    @EnvironmentObject var projectViewModel: ProjectViewModel
    @State private var newProjectName: String = ""
    
    let columns = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        //ForEach(projectViewModel.projects) { project in
                           // projectGridItem(project: project)
                        }
                    }
                    .padding()
                    
                    // Add custom project section
                    VStack {
                        TextField("Enter Custom Project Name", text: $newProjectName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        Button(action: addCustomProject) {
                            Text("Add Custom Project")
                                .font(.title2)
                                .padding()
                                .background(Color.teal)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .disabled(newProjectName.isEmpty) // Disable the button if the text field is empty
                    }
                    .padding()
                }
                .navigationTitle("Projects")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
    //Function to create a grid item view for a project
    @ViewBuilder
    private func projectGridItem(project: Project) -> some View {
        NavigationLink(destination: RoomListView(project: project)) {
            ZStack {
                Image(project.imageName ?? "")
                    .resizable()
                    .scaledToFill() // Scale the image to fill the entire frame
                    .frame(maxWidth: .infinity, maxHeight: 120) // set a maximum height
                    .cornerRadius(10)
                    .clipped() // clip any overflow
                
                // Overlay the project name on top of the image
                Text(project.name)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
            }
            .frame(height: 120) // set the height of the entire zstack
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
    
    // Function to add a custom project
    private func addCustomProject() {
       // let newProject = Project(name: newProjectName, imageName: "placeholder")
        // use a placeholder image or handle as needed
        //projectViewModel.addProject(newProject)
        //newProjectName = "" // clear the text field after adding the project
    }
//}
struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListView()
            .environmentObject(ProjectViewModel())
    }
}
              
