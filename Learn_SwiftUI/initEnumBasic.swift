//
//  initEnumBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/20.
//

import SwiftUI

struct initEnumBasic: View {
    
    // 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    // init -> 초기화 함수
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

struct initEnumBasic_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            initEnumBasic(count: 100, fruit: .apple)
            initEnumBasic(count: 56, fruit: .orange)
        }
    }
}
