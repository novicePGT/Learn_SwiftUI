//
//  ColorBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/06/30.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.purple)
                .frame(width: 300, height: 100, alignment: .center)
            
            // Primary Color : 자동으로 다크모드 색 지원
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
                .frame(width: 300, height: 100, alignment: .center)
            
            // UIColor : UIkit 에서 제공하는 컬러 사용가능
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100, alignment: .center)
        }
        
        VStack(spacing:20) {
            // CustomColor
            Text("Coustom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100, alignment: .center)
            
        }
    }
}

struct ColorBasic_Previews: PreviewProvider {
    static var previews: some View {
        ColorBasic()
//            .preferredColorScheme(.dark) // 다크모드 !!
    }
}
