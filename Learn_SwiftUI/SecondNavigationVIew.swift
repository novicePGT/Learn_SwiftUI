//
//  SecondNavigationVIew.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/01.
//

import SwiftUI

struct SecondNavigationVIew: View {
    
    // property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
                
            VStack(spacing: 20) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

                NavigationLink {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지입니다.")
                            .font(.largeTitle)
                    }
                } label: {
                     Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}

struct SecondNavigationVIew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SecondNavigationVIew()
        }
    }
}
