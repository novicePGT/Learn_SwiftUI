//
//  IconBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/05.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "pencil")
                .resizable()
            // renderMode 에서 original 로 하게 되면 실제 Color dptj multi color 로 변경도게 된다.
            // 고유 컬러 값으로 변경되어서 color 를 변경하더라도 변경되지 않는 컬러 값이 됩니다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.red)
                .frame(width: 300, height: 300)
        }
    }
}

struct IconBasic_Previews: PreviewProvider {
    static var previews: some View {
        IconBasic()
    }
}
