//
//  ToDoListView.swift
//  ToDoList
//
//  Created by MasterBi on 17/6/24.
//

import SwiftUI

struct ToDoListView: View {
    let userId: String
    @StateObject var viewModel = ToDoListViewViewModel()
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
               Text("Welcome \(userId)")
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
