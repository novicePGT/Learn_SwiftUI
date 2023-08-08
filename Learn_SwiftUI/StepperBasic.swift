//
//  StepperBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/08.
//

import SwiftUI

struct StepperBasic: View {
    
    // property
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0 // 도형 값을 변경할 때는 CGFloat
    @State var heightChange: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100 + heightChange)
            
            Stepper("직사각형 너비 변화") {
                // + 기호를 누를 때 변화되는 것
                differentWidth(amount: 20)
            } onDecrement: {
                // - 기호 누를 때 변화하는 것
                differentWidth(amount: -20)
            }
            
            Stepper("직사각형 높이 변화") {
                differentHeight(amount: 20)
            } onDecrement: {
                differentHeight(amount: -20)
            }
        } //: VStack
    } //: Body
    
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthChange += amount
        }
    }
    
    func differentHeight(amount: CGFloat) {
        withAnimation(.easeInOut) {
            heightChange += amount
        }
    }
}

struct StepperBasic_Previews: PreviewProvider {
    static var previews: some View {
        StepperBasic()
    }
}
