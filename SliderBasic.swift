//
//  SliderBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/09.
//

import SwiftUI

struct SliderBasic: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("레벨: ")
                Text("\(sliderValue)")
                Text(String(format: "%.1f", sliderValue))
            } //: HStack
            .foregroundColor(color)
            
            // value 는 항상 float (double) Int 가 아닌 float 값으로 설정
            // in: 슬라이더의 범위 설정
            // step: 단계 설정 슬라이더가 어떤 단위로 증가 감소 되는지 설정
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                // 최소, 최대값 라벨
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Label")
                })
            .accentColor(.red)
            .padding()
        } //: VStack
    }
}

struct SliderBasic_Previews: PreviewProvider {
    static var previews: some View {
        SliderBasic()
    }
}
