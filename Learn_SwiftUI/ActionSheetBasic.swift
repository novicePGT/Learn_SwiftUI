//
//  ActionSheetBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/04.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    // property
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            // show result
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            // content
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("Park geunt Tae")
                
                Spacer()
                
                Button {
                    // action
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
            
            Spacer()
        } // VStack
        .actionSheet(isPresented: $showActionSheet) {
            // actionSheet 에 담기는 내용 ActionSheet type
            getActionSheet()
        } // action sheet
    } // body
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            // action
            resultActionSheet = "공유 되었습니다."
        }
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제하기")) {
            resultActionSheet = "삭제 되었습니다."
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet (
            title: Text("Action Sheet 제목"),
            message: Text("Action Sheet 내용"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton]
        )
    }
    
}

struct ActionSheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBasic()
    }
}
