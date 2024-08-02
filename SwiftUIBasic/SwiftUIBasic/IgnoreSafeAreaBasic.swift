//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(edges: .top)
            ScrollView{
                VStack{
                    Text("박스형 리스트")
                        .font(.largeTitle)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    ForEach(1..<11) { index in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding()
                            .overlay(
                                Text("\(index)번 리스트")
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}
