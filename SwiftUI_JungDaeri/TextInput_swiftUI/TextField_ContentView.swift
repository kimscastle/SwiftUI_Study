//
//  TextField_ContentView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/20.
//

import SwiftUI

struct TextField_ContentView: View {
    
    @State private var inputValue: String = ""
    
    var body: some View {
        TextField("글자를 입력해주세요!", text: $inputValue)
    }
}

struct TextField_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextField_ContentView()
    }
}
