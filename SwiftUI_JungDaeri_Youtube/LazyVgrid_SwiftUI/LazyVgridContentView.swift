//
//  LazyVgridContentView.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/05/25.
//

import SwiftUI

struct LazyVgridContentView: View {
    
//    let myData = Array(1...2000).map({(number: Int) in
//        return "\(number)번"
//    })
    
    var body: some View {
        ScrollView {
            //그리드아이템옵션3개
            //.fixed 고정
            //.adaptive 계산해서 여러개 다 채우기
            //.flexible 하나만 채우기
            LazyVGrid(columns: [
                GridItem(.fixed(50)),
                GridItem(.adaptive(minimum: 20)),
                GridItem(.flexible(minimum: 50))
            ], spacing: 100, content: {
                ForEach(1..<2000) { data in
                    Rectangle()
                        .foregroundColor(.blue).frame(height: 120)
                        .overlay(Text("title: \(data)"))
                }
            })
        }
    }
}

struct LazyVgridContentView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVgridContentView()
    }
}
