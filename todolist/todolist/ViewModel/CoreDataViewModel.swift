//
//  CoreDataViewModel.swift
//  todolist
//
//  Created by Daniel Alpizar on 9/10/21.
//

import Foundation
class CoreDataViewModel: ObservableObject{
    @Published var tasks: [TaskEntity] = [TaskEntity]()
    
    @Published var coreDM = CoreDataManager()
    func saveTask(title: String, description:String, priority:String){
        //Validations
        coreDM.saveTask(title: title, description: description, priority: priority)
    }
    
    func getAllTask(){
        tasks = self.coreDM.getAllTask()
    }
    
    func deleteTask(task:TaskEntity){
        //Validations
        coreDM.deleteTask(task: task)
    }
}
