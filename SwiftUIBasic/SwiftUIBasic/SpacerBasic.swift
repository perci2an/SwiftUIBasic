//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/1/24.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        VStack{
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
        }
        
        Spacer()
        
        HStack(spacing:0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
    }
}

#Preview {
    SpacerBasic()
}
