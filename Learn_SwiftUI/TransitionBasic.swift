//
//  TransitionBasic.swift
//  Learn_SwiftUI
//
//  move: 단방향 이동 Transition
//  opacity: 투명도 조절 Transition
//  scale: 크기 조절 Transition
//  asymmetric: 비대칭 방향 이동 Transition
//
//  Created by 박근태 on 2023/07/30.
//

import SwiftUI

struct TransitionBasic: View {
    
    // property
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0.0)
                
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                
                // 2번 opacity transition
//                    .transition(.opacity)
                
                // 3번 scale transition
//                    .transition(.scale)
                
                // 4번 asymmetric transition - 시작점 끝지점을 custom, 정해주기 때문에 비대칭 trasition
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}


struct TransitionBasic_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBasic()
    }
}
