//
//  FrameBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/07/10.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        // 1
        VStack(spacing: 20) {
            Text("Hello World")
                .font(.title)
                .background(Color.green)
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.red)
            
            Divider()
            //2
                Text("hello World !!")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.red)
        }
        
        VStack(spacing: 20) {
            Text("Hello World !!")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        }
    }
}

struct FrameBasic_Previews: PreviewProvider {
    static var previews: some View {
        FrameBasic()
    }
}
