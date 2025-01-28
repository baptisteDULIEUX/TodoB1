//
//  Todo.swift
//  TodoB1
//
//  Created by dulieux baptiste on 28/01/2025.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
    
    static var testData = [
        Todo(title: "Task1", isCompleted: true),
        Todo(title: "Task2", isCompleted: false),
        Todo(title: "Task3", isCompleted: true),
        Todo(title: "Task4", isCompleted: false)
    ]
}
