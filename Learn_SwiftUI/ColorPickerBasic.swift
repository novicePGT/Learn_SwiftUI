//
//  ColorPickerBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/07.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    // property
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                Text("원하는 색을 고르세요")
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, maxHeight: 50, alignment:.center)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(10)
            .multilineTextAlignment(.center)
            .font(.headline)
            .padding(10)
        }
    }
}

struct ColorPickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBasic()
    }
}
