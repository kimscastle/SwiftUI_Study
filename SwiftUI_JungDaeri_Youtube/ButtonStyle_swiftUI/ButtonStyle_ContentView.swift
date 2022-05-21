//
//  ButtonStyle_ContentView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/19.
//

import SwiftUI

struct ButtonStyle_ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            Button {
                print("버튼클릭")
            } label: {
                Text("탭")
            }
            .buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            
            Button {
                print("버튼클릭")
            } label: {
                Text("롱")
            }
            .buttonStyle(MyButtonStyle(color: .red, type: .long))
            
            Button {
                print("버튼클릭")
            } label: {
                Text("로테이트")
            }
            .buttonStyle(MyRotateButtonStyle(color: .green))
            
            Button {
                print("버튼클릭")
            } label: {
                Text("작아지는버튼")
            }
            .buttonStyle(MySmallerButtonStyle(color: .orange))
            
            Button {
                print("버튼클릭")
            } label: {
                Text("블러처리되는버튼")
            }
            .buttonStyle(MyBlurButtonStyle(color: .gray))
        }
    }
}

struct ButtonStyle_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle_ContentView()
    }
}
