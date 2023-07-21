//
//  LazyGridBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/21.
//

import SwiftUI

struct LazyGridBasic: View {
    
    // LazyVGrid
    // columns 의 개수를 3개로 설정 : flexible() 화면 크기를 자동으로 맞추는거
    let colums: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil)
    ]
    
    // LazyHGrid
    // title 을 1000 개 변수를 생성
    // ["목록1", "목록2", ... "목록1000"] [String]
    let title: [String] = Array(1...1000).map {"목록: \($0)"}
    
    // 화면 그리드형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        
        // 1 - LazyVGrid
        ScrollView {
            Rectangle()
                .fill(Color.blue)
                .frame(height: 400)
            
            LazyVGrid(
                columns: colums,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    // Section 1
                    Section(header: Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.orange)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    } // section 1
                    
                    // Section 2
                    Section(header: Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 150)
                                    .overlay(
                                        Text("\(index) 번")
                                    )
                            }
                        } // section 2
                }
        } // : 1번
        
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout,
                      alignment: .center,
                      spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
    }
}

struct LazyGridBasic_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBasic()
    }
}
