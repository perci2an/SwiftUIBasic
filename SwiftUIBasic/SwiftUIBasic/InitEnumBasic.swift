//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct InitEnumBasic: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20){
            Text("\(count)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 200, fruit: .orange)
    }
}
