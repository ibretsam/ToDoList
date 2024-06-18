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
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Full Name", text: $viewModel.fullname)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
               
                AuthButton(title: "Register", color: .blue) {
                    viewModel.register()
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
