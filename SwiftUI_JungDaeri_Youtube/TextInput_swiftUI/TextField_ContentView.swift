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
        
        VStack(spacing: 10){
            HStack {
                TextField("아이디를 입력해주세요", text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.roundedBorder)
                Button {
                    self.username = ""
                } label: {
                    if(username.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                        .foregroundColor(.secondary)
                    }
                }

            }
            HStack {
                SecureField("비밀번호를 입력해주세요", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.roundedBorder)
                Button {
                    self.password = ""
                } label: {
                    if(password.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                        .foregroundColor(.secondary)
                    }
                }
            }
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
