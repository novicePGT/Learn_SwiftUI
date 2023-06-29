//
//  ShapeBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/06/29.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            // circle
            Text("원형")
                .font(.title)
            Circle()
//                .fill(Color.blue) // fill 이 제일 앞면
//                .foregroundColor(.pink) // fill이 없을 때 핑크색
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
                .trim(from: 0.4, to: 1.0)
                .stroke(Color.purple, lineWidth: 20)
                .frame(width: 200, height: 100, alignment: .center)
                .padding(20)
            
            // Ellipse 타원형
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
                .padding(10)
            
            // 캡슐형
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 20)
                .frame(width: 200, height: 100, alignment: .center)
        }
        
        VStack(spacing: 20) {
            // 직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 150, alignment: .center)
            
            // 둥근 직사각형
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .frame(width: 150, height: 150, alignment: .center)
            
            // 잘린 둥근 직사각형
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 40)
                .trim(from: 0.4, to: 1.0)
                .fill(Color.yellow)
                .frame(width: 150, height: 150, alignment: .center)
        }
    }
}

struct ShapeBasic_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBasic()
    }
}
