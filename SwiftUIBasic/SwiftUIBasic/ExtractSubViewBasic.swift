//
//  ExtractSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/5/24.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 30, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
