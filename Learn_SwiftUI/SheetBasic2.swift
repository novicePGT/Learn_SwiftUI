//
//  SheetBasic2.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/01.
//

import SwiftUI

struct SheetBasic2: View {
    
    // @Binding - property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.red.ignoresSafeArea()
            
            // content
            Button {
                // Sheet 닫기 action
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

struct SheetBasic2_Previews: PreviewProvider {
    static var previews: some View {
        SheetBasic2()
    }
}
