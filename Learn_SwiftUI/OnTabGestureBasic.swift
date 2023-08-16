//
//  OnTabGestureBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/16.
//

import SwiftUI

struct OnTabGestureBasic: View {
    
    // property
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 20) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            // 1번 일반적인 Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            // 2번 onTabGesture 한 번 클릭시 실행
            Text("2. onTabGesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두 번 클릭시 실행
            Text("3. onTabGesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .onTapGesture(count: 3) {
                    isSelected.toggle()  
                }
            
            Spacer()

        } //: vstack
        .padding(40)
    }
}

struct OnTabGestureBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnTabGestureBasic()
    }
}
