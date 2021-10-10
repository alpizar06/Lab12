//
//  TaskDetailsView.swift
//  todolist
//
//  Created by Daniel Alpizar on 10/10/21.
//

import SwiftUI

struct TaskDetailsView: View {
    let task: TaskEntity
    var body: some View {
        VStack {
            Form{
                Text("Task Title").bold()
                Text(task.title ?? "")
                Text("Description").bold()
                Text(task.taskDescription ?? "")
                    .frame(width: 100, height: 300, alignment: .center)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Task Details").font(.headline)
                    }
                }
            }
        }
    }
}

struct TaskDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let Task = TaskEntity()
        TaskDetailsView(task: Task)
    }
}
