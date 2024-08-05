//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/5/24.
//

import SwiftUI

struct ItemBasic: View {
    
    var title: String
    var count: Int
    var color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ItemBasic(title: "국자", count: 1, color: .gray)
}
