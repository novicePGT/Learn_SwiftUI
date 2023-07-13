//
//  SpacerBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/13.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        // 1번 - Spacer 예시 도형
        HStack(spacing: 0) {
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
        .padding(10)
        
        // 2번 - App 상단 설정 닫기 아이콘 만들기
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct SpacerBasic_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBasic()
    }
}
