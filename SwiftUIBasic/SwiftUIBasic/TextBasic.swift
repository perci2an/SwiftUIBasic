//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 7/30/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .underline(true, color: Color.red)
                .strikethrough(true, color: Color.green)
                .italic()
            
            Text("Hello, World!2".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            Text("Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~ Multiline text aligment~")
                .multilineTextAlignment(.leading)
                .foregroundColor(.blue)
            
        }
    }
}

#Preview {
    TextBasic()
}
