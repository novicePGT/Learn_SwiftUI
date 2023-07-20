//
//  ScrollViewBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/20.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        // 1번 - 세로 스크롤, showIndicators 는 스크롤 바 표시
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
        
        // 2번 - 가로 스크롤
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300, height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
        
        // 3번 - 혼합
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<9) { _ in // 세로 9 줄
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in // 가로 20 칸
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBasic()
    }
}
