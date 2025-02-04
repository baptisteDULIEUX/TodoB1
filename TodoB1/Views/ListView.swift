//
//  ContentView.swift
//  TodoB1
//
//  Created by dulieux baptiste on 28/01/2025.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var todoVM: TodoViewModel
    
    var body: some View {
        // Création de la barre de navigation
        NavigationView{
            // Affichage de toutes les tâches todo
            List{
                // parcours des différentes data de la classe Todo
                ForEach(todoVM.todos) { todo in
                    RowView(todo: todo)
                        .onTapGesture {
                            self.todoVM.updateTodo(todo: todo)
                        }
                }
                .onDelete(perform: todoVM.deleteTodo)
                .onMove(perform:todoVM.moveTodo)
            }
            // modification du background de la liste
            .listStyle(PlainListStyle())
            .navigationTitle("Todo")
            // Ajout des boutons dans la barre de navigation
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: AddTodoView())
                }
            }
        }
    }
}

#Preview {
    ListView()
        .environmentObject(TodoViewModel())
}
