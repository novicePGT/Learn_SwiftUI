//
//  TextFieldBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/04.
//

import SwiftUI

struct TextFieldBasic: View {
    
    // property
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        NavigationView {
            // NavigationView제일 위 상단에 존재해야함
            VStack(spacing: 20) {
                // TextField 는 한 줄 - 적은 양의 데이터를 입력시 사용
//                TextField("최소 2글자 이상 입력해주세요.", text: $inputText)
//                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(Color.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // TextEditor 여러 줄
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.3))
                
                Button {
                    // 이름이 2글자 이상, save text button
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? Color.blue : Color.gray)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(10)
                }
                .disabled(!isTextEnough())

                ForEach(userNameData, id:\.self) { item in
                    Text(item)
                }
                
                Spacer()
            } // VStack
            .padding()
            .navigationTitle(Text("당신의 이름은?"))
        } // navigationView
    } // body
    
    // function
    func isTextEnough() -> Bool {
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

struct TextFieldBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBasic()
    }
}
