//
//  DarkModeBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/16.
//

import SwiftUI

struct DarkModeBasic: View {
    
    // property
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    // primary and secondary color 는 자동으로 다크 모드일 때 색 변환됨
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    // 일반적인 black, white 는 고정값임
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    // Asset 에서 adaptive 라는 이름의 color set 을 만든 후 light, dark mode 에서 색을 설정해 줄 수 있음
                    Text("Asset 에서 Adaptive 색 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                        .font(.title)
                    
                    // @Environment 사용해서 colorScheme 사용하기
                    Text("@Environment 사용해서 adaptive 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                        .font(.title)
                } // :vstack
            } // :scrollView
        }
        .padding()// :navigationView
    }
}

struct DarkModeBasic_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBasic()
    }
}
