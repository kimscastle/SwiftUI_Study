//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
           .font(.system(size: 50, weight: .light, design: .serif))
           .foregroundColor(.pink)
           .frame(width: 200, height: 200)
           .background(Color.yellow)
           .border(.red, width: 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
