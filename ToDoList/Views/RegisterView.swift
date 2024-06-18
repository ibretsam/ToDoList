//
//  RegisterView.swift
//  ToDoList
//
//  Created by MasterBi on 17/6/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            // Register Form
            Form {
                TextField("Full Name", text: $viewModel.fullname)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
               
                AuthButton(title: "Register", color: .blue) {
                    
                }
                
            }
            .offset(y: -50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
