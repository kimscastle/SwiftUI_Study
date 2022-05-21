//
//  MySmallerButtonStyle.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/19.
//

import SwiftUI

struct MySmallerButtonStyle: ButtonStyle {
    
    var color: Color
//    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.5 : 1)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct MySmallerButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("butoon clicked!")
        } label: {
            Text("호호")
        }.buttonStyle(MySmallerButtonStyle(color: .blue))
    }
}

