//
//  MyList.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/14.
//

import SwiftUI

struct MyList: View {
    var body: some View {
//        List{
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//        }
//        List{
//            ForEach(1...10, id: \.self){
//                Text("마이리스트 \($0)")
//            }
        List{
            Section(header: Text("오늘 할 일").font(.headline).foregroundColor(.black),
                    footer: Text("여기가 footer입니다").font(.subheadline).foregroundColor(.gray)){
                ForEach(1...3, id: \.self){ itemindex in
    //                Text("마이리스트 \(itemindex)")
                    MyCard(icon: "book.fill", title: "책읽기 \(itemindex)", start: "1 PM", end: "3 PM", bgColor: .green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("내일 할 일")){
                ForEach(1...3, id: \.self){ itemindex in
    //                Text("마이리스트 \(itemindex)")
                    MyCard(icon: "book.fill", title: "책읽기 \(itemindex)", start: "1 PM", end: "3 PM", bgColor: .blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .navigationTitle(Text("내 투두리스트"))
        //구분자 없애기
        .onAppear{
            UITableView.appearance().separatorColor = .clear
        }
//        .navigationBarHidden(true)
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
