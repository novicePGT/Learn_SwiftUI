//
//  StackBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/11.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
        
        HStack(spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.green)
                .frame(width: 130, height: 130)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            VStack(alignment: .leading, spacing:20) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
        }
        
        // ZStack VS Background
        
        VStack(spacing: 50) {
            // ZStack 사용해서 원에 1 표현 - layer 가 복잡할 때 ZStack 사용하면 좋음
            ZStack() {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // background 사용해서 원에 1을 동일하게 표현 - layer가 단순할 경우 추천
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

struct StackBasic_Previews: PreviewProvider {
    static var previews: some View {
        StackBasic()
    }
}
