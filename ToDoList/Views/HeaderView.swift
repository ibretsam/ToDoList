//
//  HeaderView.swift
//  ToDoList
//
//  Created by MasterBi on 18/6/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text(subtitle)
                    .font(.system(size: 30))
                
            }
            .foregroundStyle(.white)
            .padding(.top, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Login", subtitle: "Get things done", angle: 15, background: .pink)
}
