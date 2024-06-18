//
//  AuthButton.swift
//  ToDoList
//
//  Created by MasterBi on 18/6/24.
//

import SwiftUI

struct AuthButton: View {
    let title: String
    let color: Color
    let action: () -> Void
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(color)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    AuthButton(title: "Register", color: .blue) {
        
    }
}
