//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            
            
            TextField("What is your name", text: $name)
            //앞에는 회색글씨 뒤에는 써진 text를 어디다가 저장할지
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Text("Hi!~~\(name)")
            //저장한 name을 가져오기만 하기 때문에 $name이라고 할 필요가 없다
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.pink)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
