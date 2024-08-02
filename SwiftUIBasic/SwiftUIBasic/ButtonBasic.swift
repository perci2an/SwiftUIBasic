//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 박승민 on 8/2/24.
//

import SwiftUI

struct ButtonBasic: View {
    
    @State var mainTitle: String = "아오 버튼 안 눌려"
    
    var body: some View {
        VStack(spacing: 20) {
            //리셋 버튼
            Button{
                self.mainTitle = "리셋"
            } label: {
                Text("리셋 버튼")
            }
            
            // 변경되는 타이틀
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            // 기본 버튼
            Button{
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            // 저장 버튼
            Button{
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            }
            
            Divider()
            
            // 이모티콘 버튼
            Button{
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            // 완료 버튼
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.5)
                    )
            }
        }
    }
}

#Preview {
    ButtonBasic()
}
