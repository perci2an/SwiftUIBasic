//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct ForEachLoopBasic: View {
    
    var data: [String] = ["Hi", "Hello", "Hi everyone"]
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호: \(index)번")
                }
            }
            
            Divider()
            
            ForEach(data, id: \.self) { item in
                    Text(item)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
