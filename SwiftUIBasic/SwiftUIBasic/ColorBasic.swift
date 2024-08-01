//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 7/30/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.pink)
                .frame(width: 200, height: 100)
            
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.secondary)
                .frame(width: 200, height: 100)
            
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 200, height: 100)
            
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color("CustomColor"))
                .frame(width: 200, height: 100)
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}
