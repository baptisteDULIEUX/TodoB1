//
//  RowView.swift
//  TodoB1
//
//  Created by dulieux baptiste on 28/01/2025.
//


// View pour chaque ligne de la liste

import SwiftUI

struct RowView: View {
    
    let todo: Todo
    
    var body: some View {
        HStack {
            // checkbox
            Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(todo.isCompleted ? .green : .red)
            // Titre
            Text(todo.title)
            Spacer()
            Text(todo.priority.rawValue)
                .font(.footnote)
                .padding(3)
                .foregroundStyle(Color(.systemGray))
                .frame(width:62)
                .overlay(
                    Capsule().stroke(Color(.systemGray), lineWidth: 0.75)
                )
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
}

#Preview {
    RowView(todo: Todo.testData[0])
}
