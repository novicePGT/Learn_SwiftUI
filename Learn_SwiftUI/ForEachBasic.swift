//
//  ForEachBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/21.
//

import SwiftUI

struct ForEachBasic: View {
    
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        // 1번
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호: \(index)")
                }
            }
            
            Divider()
            
            // 2번
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct ForEachBasic_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBasic()
    }
}
