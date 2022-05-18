//
//  MyView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/17.
//

import SwiftUI

struct MyView: View {
    var title: String
    var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea(.all)
            Text(title)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

//struct MyView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyView()
//    }
//}
