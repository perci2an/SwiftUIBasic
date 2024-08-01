//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/1/24.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 20){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        }
        
//            HStack(spacing: 20){
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//            }
        
//        ZStack(alignment: .topLeading){
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 130, height: 130)
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//            }
        
//            ZStack(alignment: .top){
//                    Rectangle()
//                        .fill(Color.yellow)
//                        .frame(width: 350, height: 500)
//                    VStack(alignment: .leading, spacing: 30){
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 100, height: 100)
//                        Rectangle()
//                            .fill(Color.green)
//                            .frame(width: 100, height: 100)
//                        HStack(alignment: .bottom, spacing: 10) {
//                            Rectangle()
//                                .fill(Color.purple)
//                                .frame(width: 50, height: 50)
//                            Rectangle()
//                                .fill(Color.pink)
//                                .frame(width: 75, height: 75)
//                            Rectangle()
//                                .fill(Color.blue)
//                                .frame(width: 25, height: 25)
//                        }
//                        .background(Color.white)
//                    }
//                    .background(Color.black)
//            }
        
        VStack(spacing: 50){
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                        Circle()
                            .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StackBasic()
}
