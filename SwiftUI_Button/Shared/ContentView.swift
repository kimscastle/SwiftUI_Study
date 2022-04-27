//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/04/26.
//

import SwiftUI

var colorSet = [Color.yellow, Color.green, Color.red]

struct ContentView: View {
    
    @State var index = 0
    var body: some View {
        Button {
//            self.testFunc1()
//            Self.testFunc2()
//            let index: Int = 5
//            self.index
//            //인스턴스의 프로퍼티
//            Self.variable = "String"
//            //타입의 프로퍼티
            index = (index+1)%3
            print("버튼 클릭")

        } label: {
            HStack {
                Text("Log in")
                Image(systemName: "arrow.right.circle")
            }
        }.buttonStyle(MyButtonStyle(index: $index))
        
    }
    
//    func testFunc1() {
//        print("인스턴스 메서드")
//    }
//
//    static func testFunc2() {
//        print("타입 메서드")
//    }
}

struct MyButtonStyle: ButtonStyle {
    @Binding var index: Int
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(colorSet[index])
            .clipShape(Capsule())
            .overlay(Capsule().stroke(.pink, lineWidth: 5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
