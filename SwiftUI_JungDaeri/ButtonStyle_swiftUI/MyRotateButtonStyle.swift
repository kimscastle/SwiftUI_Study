//
//  MyRotateButtonStyle.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/19.
//

import SwiftUI

struct MyRotateButtonStyle: ButtonStyle {
    
    var color: Color
//    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0))
    }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("butoon clicked!")
        } label: {
            Text("호호")
        }.buttonStyle(MyRotateButtonStyle(color: .blue))
    }
}
