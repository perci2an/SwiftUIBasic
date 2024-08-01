//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 7/30/24.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20) {
//            Text("원형")
//                .font(.title)
//            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.green)
//                .stroke(Color.yellow, lineWidth: 10)
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash:[30]))
//                .trim(from: 0.2, to: 1.0)
//                .stroke(Color.purple, lineWidth: 50)
//                .frame(width: 200, height: 100)
//                .padding(20)
//            
//            Text("타원형")
//                .font(.title)
//            Ellipse()
//                .fill(Color.green)
//                .frame(width:200, height: 100, alignment: .center)
            
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width:200, height: 100, alignment: .center)
            
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20.0)
                .trim(from: 0.2, to: 1.0)
                .frame(width: 200, height: 100)
        }
    }
}

#Preview {
    ShapeBasic()
}
