//
//  OnAppearBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/16.
//

import SwiftUI

struct OnAppearBasic: View {
    
    // property
    @State var noticeText: String = "onAppear 시작전"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(noticeText)
                // 화면이 보이고 나서 load가 되게끔하는 LazyStack
                LazyVStack {
                    // 50개의 직사각형 박스 만들기
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                        // onAppear: 새로 화면을 만들때마다 count 1씩 증가시키기
                            .onAppear() {
                                count += 1
                            }
                    } // :loop
                }
            } // :scroll
            // .onAppear: 여기서 onAppearBasic View 가 화면에 나타날 때 시작되는 logic 넣기
            .onAppear {
                // dispatchQueue 를 사용해서 main Thread 에 2초 딜레이 후 이벤트 실행
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear 시작 완료했습니다"
                }
            }
            .navigationTitle("생성된 박스 : \(count)")
        } // :naviagation
    }
}

struct OnAppearBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBasic()
    }
}
