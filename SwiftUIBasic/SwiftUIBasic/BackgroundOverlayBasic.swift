//
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/1/24.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text("perci2an")
                .frame(width:100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                                startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                                endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        )
                        
                )
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(Color.pink)
                )
            
            Divider()
            
            Circle()
                .fill(Color.purple)
                .frame(width:100, height:100)
                .overlay(
                    Text("1")
                        .font(.title)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                )
                .background(
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 120, height: 120)
                )
            
            Divider()
            
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    ,alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 250, height: 250)
                )
                .padding()
            
            Divider()
            
            Image(systemName: "heart.fill")
                .font(.system(size:40))
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .frame(width:100, height:100)
                        .shadow(color: Color.purple, radius: 10, x:10, y:10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width:35, height: 35)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                )
                                .shadow(color:Color.red, radius: 10, x: 5, y: 5)
                            ,alignment: .bottomTrailing
                        )
                )
                .padding()
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
