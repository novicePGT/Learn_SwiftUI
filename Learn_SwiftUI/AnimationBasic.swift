//
//  AnimationBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/28.
//

import SwiftUI

struct AnimationBasic: View {
    
    // property
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button \(isAnimated.description)")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? -300 : 0)
            
            Spacer()
        }
        
        // Speed 에 따른 animation
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button \(isAnimated.description)")
            }
            
            // linear animation : 처음부터 끝까지 속도가 일정하다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 20, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn animation : 처음에 느렸다가 끝에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 20, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut animation : 처음에 빨랐다가 끝에 느려지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 20, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut animation : 처음과 끝에 느려지고 중간 부분이 빨라짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 20, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
            
        }
        
        // View - Spring animation
        VStack {
            Button {
                // response: 단일 진동을 ㅗ안료하는 데 걸리는 시간
                // dampingFraction: 얼마나 빠르게 스프링이 정지하는 속도제어 만약 0일 때 영원히 멈추지 않음 0 ~ 1.0 이 최대
                // blendDuration : 다른 애니메이션 간의 전호나 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0
                )) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
    }
}

struct AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasic()
    }
}
