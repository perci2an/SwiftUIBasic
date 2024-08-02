//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct LazyGridBasic: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    // ["목록 1", "목록 2", ... "목록 1000"] [String]
    let title: [String] = Array(1...1000).map{"목록 \($0)"}

    // 화면 그리드 형식으로 채우기
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(Color.green)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                
                // 섹션 1
                Section(header: Text("Section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.yellow)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.cyan)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } // 요기까지
                
                // 섹션 2
                Section(header: Text("Section2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.orange)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } // 요기까지
            }
        } // Scroll View
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20){
                ForEach(title, id: \.self) { item in
                    VStack{
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyGridBasic()
}
