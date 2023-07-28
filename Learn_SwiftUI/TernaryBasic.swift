//
//  TernaryBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/28.
//

import SwiftUI

struct TernaryBasic: View {
    
    // property
    @State var isStaringState: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isStaringState.toggle()
            } label: {
                Text("if else 버튼: \(isStaringState.description)")
            }

            if isStaringState {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
            }
            
            // 삼항연산자
            Button {
                isStaringState.toggle()
            } label: {
                Text("삼항연산자 버튼: \(isStaringState.description)")
            }
        
            RoundedRectangle(cornerRadius: isStaringState ? 25.0 : 0)
                .fill(isStaringState ? Color.red : Color.blue)
                .frame(
                    width: isStaringState ? 200 : 50,
                    height: isStaringState ? 400 : 100
                )

            
            Spacer()
        }
    }
}

struct TernaryBasic_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBasic()
    }
}
