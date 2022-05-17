//
//  MyTabView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/17.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
    
        TabView {
            //보여질 화면
//            Text("1번")
//                .font(.largeTitle)
            MyView(title: "1번마이뷰", bgColor: .yellow)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            
//            Text("2번")
//                .font(.largeTitle)
            MyView(title: "2번마이뷰", bgColor: .gray)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            
//            Text("3번")
//                .font(.largeTitle)
            MyView(title: "3번마이뷰", bgColor: .orange)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
