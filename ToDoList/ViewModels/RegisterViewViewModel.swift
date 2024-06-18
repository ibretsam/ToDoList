//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by MasterBi on 17/6/24.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var fullname = "";
    @Published var email = "";
    @Published var password = "";
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty, !fullname.isEmpty else {
            errorMessage = "Plese fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password must be greater than 6 characters"
            return false
        }
        
        return true
    }
    
    func register() {
        guard validate() else {
            return
        }
        
        // Register
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, fullname: fullname, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
}
