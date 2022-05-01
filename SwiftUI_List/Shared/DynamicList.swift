//
//  DynamicList.swift
//  SwiftUI_List (iOS)
//
//  Created by uiskim on 2022/05/01.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List(playlists){ list in
            CardView(lists: list)
        }
        .listStyle(SidebarListStyle())
    }
}

struct CardView: View {
    let lists: PlayList
    var body: some View {
        VStack(spacing: 0){
            Image(lists.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
            
            VStack(alignment: .leading){
                HStack{
                    Text(lists.title)
                        .bold()
                        .lineLimit(1)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .font(.title2)
                
                Text(lists.name)
                    .font(.caption)
                
                HStack{
                    ProgressView(value: lists.percent, total: 1.0)
                        .progressViewStyle(LinearProgressViewStyle(tint: .yellow))
                        .frame(height: 10)
                    
                    Text("\(Int(lists.percent*100))%")
                        .font(.caption)
                }
            }
            .padding()
        }
        .padding()
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

let playlists = [
    PlayList(title: "간단한 게임으로 코딩 시작해보기", name: "스위프트 하이", percent: 0.2, imageName: "dl_1"),
    PlayList(title: "포털타고 순간이동을 해보자", name: "스위프트 하이", percent: 0.4, imageName: "dl_2"),
    PlayList(title: "숨은 버그 찾기", name: "스위프트 하이", percent: 0.5, imageName: "dl_3"),
    PlayList(title: "함수란 신발끈 묶기다?", name: "스위프트 하이", percent: 0.1, imageName: "dl_4")
]

struct PlayList: Identifiable{
    let id = UUID()
    let title: String
    let name: String
    let percent: Double
    let imageName: String
}
//리스트안에 struct로 정의한 요소들을 넣을때는 구조체의 타입을 identifiable로 하고 변수에 let id = UUID()를 추가해줘야한다

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
