//
//  TaskManager.swift
//  PracticeProjectA
//
//  Created by HGP on 6/16/26.
//

import SwiftUI

// A bluepprint for creating task items
struct TaskItem : Identifiable {
    let id = UUID()
    var title: String
    var isComplete: Bool
}

// The main view the user sees while using the app
struct TaskManager: View {
    
    // Create an array of of the different task items
    @State private var tasks = [
        TaskItem(title: "Clean Room", isComplete: false),
        TaskItem(title: "Cook Dinner", isComplete: false),
        TaskItem(title: "Fold Laundry", isComplete: false)
    ]
    
    var body: some View {
        // Title Text
        Text("Task Manager")
            .bold()
            .font(.largeTitle)
        
        // Create a list to display all tasks on screen
        List {
            ForEach($tasks) { $task in
                Toggle(task.title, isOn: $task.isComplete)
            }
        }
        
        
    }
}

#Preview {
    TaskManager()
}
