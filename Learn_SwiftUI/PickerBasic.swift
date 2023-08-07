//
//  PickerBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/07.
//

import SwiftUI

struct PickerBasic: View {
    
    // property
    let typeOfPhone: [String] = [
        "애플", "삼성", "샤오미", "누구인가?"
    ]
    
    @State var selectIndex: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectIndex) {
                        ForEach(0 ..< typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        } // Loop
                    } label: {
                        Text("기종 선택")
                    } // Picker
                    .pickerStyle(.wheel)
                } // section
                Text("핸드폰 제조사는 \(typeOfPhone[selectIndex]) 입니다")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .navigationTitle(Text("현재 사용중인 핸드폰 기종은?"))
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationView
    }
}

struct PickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        PickerBasic()
    }
}
