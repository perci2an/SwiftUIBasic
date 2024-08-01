//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 7/30/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Liner Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottom)
                )
                .frame(width: 200, height: 100)
            
            Text("Radial Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 150)
                )
                .frame(width: 200, height: 100)
            
            Text("Angular Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topTrailing,
                        angle: .degrees(170 + 45))
                )
                .frame(width: 200, height: 100)
        }
    }
}

#Preview {
    GradientBasic()
}
