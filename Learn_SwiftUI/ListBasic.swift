//
//  ListBasic.swift
//  Learn_SwiftUI
//
//  Created by 박근태 on 2023/08/02.
//

import SwiftUI

struct ListBasic: View {
    
    // property
    @State var fruits: [String] = [
        "사과", "오렌지", "수박", "바나나", "복숭아", "자두"
    ]
    
    @State var meats: [String] = [
        "돼지고기", "소고기", "닭고기", "오리고기", "악어고기"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    // content
                    ForEach(fruits, id: \.self) {fruits in
                        Text(fruits)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // Section

                Section {
                    // content
                    ForEach(meats, id: \.self) { meats in
                        Text(meats)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .listRowBackground(Color.green)
                } header: {
                    Text("고기 종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }

                
            } // List
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        } // Navigation
    } // Body
    
    // function
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }
    }
}

struct ListBasic_Previews: PreviewProvider {
    static var previews: some View {
        ListBasic()
    }
}
