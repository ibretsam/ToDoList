//
//  ProfileView.swift
//  ToDoList
//
//  Created by MasterBi on 17/6/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    UserProfileView(user: user)
                } else {
                    Text("Loading profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func UserProfileView(user: User) -> some View {
            // Avatar
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.blue)
                .frame(width: 125, height: 125)
                .padding()
            
            // Info: Name, Email, Member since
            VStack(alignment: .leading, content: {
                HStack {
                    Text("Name: ")
                        .bold()
                    Text(user.fullname)
                }
                .padding()
                
                HStack {
                    Text("Email: ")
                        .bold()
                    Text(user.email)
                }
                .padding()
                
                HStack {
                    Text("Member since: ")
                        .bold()
                    Text(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))
                }
                .padding()
            })
            .padding()
            
            // Sign out
            Button("Log Out") {
                viewModel.logout()
            }
            .tint(.red)
            .padding()
            
            Spacer()
    }
}

#Preview {
    ProfileView()
}
