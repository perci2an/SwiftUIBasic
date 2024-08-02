//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false){
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 200)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title)
//                        )
//                }
//            }
//        }
//        
//        ScrollView(.horizontal, showsIndicators: true){
//            HStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 200)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title)
//                        )
//                }
//            }
//        }
        
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack{
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20) { _ in
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ScrollViewBasic()
}
