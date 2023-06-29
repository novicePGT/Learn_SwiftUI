//
//  TextBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/06/29.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font 사이즈를 title, Body, footnote 등을 정하면 reponsive 하게 변경됨.
            // 아이패드 & 아이폰 에서 사이즈가 각각 다르게 보이게 하는 뭐 그런거
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontWeight(.black)
            Text("Park Geun Tae")
                .font(.caption)
                .bold()
                .underline(true, color: .blue)
                .italic()
            Text("201862018")
                .font(.caption2)
                .strikethrough(true, color: .cyan)
            
            // 아래 방법은 text 크기를 지정할 수 있다. font 12, 40... 단점 : 고정식
            Text("GITHUB : novicePGT".description)
                .font(.system(size: 25, weight: .semibold, design: .monospaced))
            
            // multiline text alignmnet : leading, 왼쪽 | center, 가운데 | trailing, 오른쪽
            Text("멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.멀티라인 텍스트 정렬.")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
        }
    }
}

struct TextBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextBasic()
    }
}


