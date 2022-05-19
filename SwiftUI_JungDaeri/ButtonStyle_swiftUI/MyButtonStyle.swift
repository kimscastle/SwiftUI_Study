//
//  MyButtonStyle.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/19.
//

import SwiftUI

enum ButtonType{
    case tab
    case long
    case rotate
    case blur
}

struct MyButtonStyle: ButtonStyle {
    
    var color: Color
    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1)
            .onTapGesture {
                if type == .tab {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture {
                if type == .long {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
        
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View{
        Button {
            print("butoon clicked!")
        } label: {
            Text("호호")
        }.buttonStyle(MyButtonStyle(color: .blue, type: .tab))

    }
}
