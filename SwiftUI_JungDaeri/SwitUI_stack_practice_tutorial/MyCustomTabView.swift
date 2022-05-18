//
//  MyCustomTabView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/18.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}

struct MyCustomTabView: View {
    
    @State var tabIndex: TabIndex
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        GeometryReader{ geometry in
            ZStack{
                MyView(title: "홈", bgColor: .green)
            }
        }
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
