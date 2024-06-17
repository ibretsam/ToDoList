//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by MasterBi on 17/6/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
