//
//  SheetBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/01.
//

import SwiftUI

struct SheetBasic: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
            
            // content
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
//            }

        }
    }
}

struct SheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        SheetBasic()
    }
}
