//
//  PaddingBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/12.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, World !!")
                .background(Color.yellow)
                .padding() // .padding(.all, 15)
                .padding(.leading, 60) // CSS 기준 padding
                .background(Color.blue)
                .padding(.bottom, 20) // CSS 기준 margin
            
            Divider()
            
            Text("Hello, World !!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            Text("안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 안녕하쇼 ")
        }
        // VStack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black,
                    radius: 10,
                    x: 10, y: 10
                )
        )
        .padding(20)
    }
}

struct PaddingBasic_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBasic()
    }
}
