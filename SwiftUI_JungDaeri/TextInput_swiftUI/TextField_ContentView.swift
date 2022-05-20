//
//  TextField_ContentView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/20.
//

import SwiftUI

struct TextField_ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack{
            HStack {
                TextField("아이디를 입력해주세요", text: $username)
                    .textFieldStyle(.roundedBorder)
                Button {
                    self.username = ""
                } label: {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.secondary)
                }

            }
            SecureField("비밀번호를 입력해주세요", text: $password)
                .textFieldStyle(.roundedBorder)
            Text("입력한비번 : \(password)")
        }
        .padding(.horizontal, 50)
    }
}

struct TextField_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextField_ContentView()
    }
}
