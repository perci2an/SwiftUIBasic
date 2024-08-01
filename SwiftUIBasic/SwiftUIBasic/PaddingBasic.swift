//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/1/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Hello, perci2an!")
                .background(Color.yellow)
                .padding()
                .padding(.leading, 20)
                .background(Color.blue)
                .padding(.bottom, 20)
            
            Divider()
            
            Text("Hello perci2an!!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            Text("메뚜기 월드에 오신 걸 환영합니다. 메뚜기 월드에 오신 걸 환영합니다. 메뚜기 월드에 오신 걸 환영합니다. 메뚜기 월드에 오신 걸 환영합니다. 메뚜기 월드에 오신 걸 환영합니다. 메뚜기 월드에 오신 걸 환영합니다.")
        }
        
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
