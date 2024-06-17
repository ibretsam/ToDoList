//
//  HeaderView.swift
//  ToDoList
//
//  Created by MasterBi on 18/6/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(.pink)
                .rotationEffect(Angle(degrees: 15))
            
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text("Get things done")
                    .font(.system(size: 30))
                
            }
            .foregroundStyle(.white)
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
