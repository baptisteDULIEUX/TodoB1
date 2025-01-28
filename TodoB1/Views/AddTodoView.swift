//
//  AddTodoView.swift
//  TodoB1
//
//  Created by dulieux baptiste on 28/01/2025.
//

//Page de création de tâche

import SwiftUI

struct AddTodoView: View {
    
    // Stockage du nom de la tâche
    @State private var todoTitle: String = ""
    
    var body: some View {
        VStack{
            
            // Champs de saisie
            TextField("Enter your task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            // Bouton de sauvegarde
            Button {
                
            } label: {
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding(14)
        .navigationTitle("Add A Todo")
    }
}

#Preview {
    // ajout de navigation view dans la preview
    NavigationView{
        AddTodoView()
    }
}
