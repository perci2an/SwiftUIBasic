//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct StateBasic: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안 눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack{
                Text(myTitle)
                    .font(.title)
                Text("카운트: \(count)")
                
                HStack(spacing: 20) {
                    Button {
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
