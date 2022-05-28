//
//  WhiteButton.swift
//  SwiftUI_Netflix
//
//  Created by uiskim on 2022/05/28.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16, weight: .bold))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(3)
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            WhiteButton(text: "Play", imageName: "play.fill", action: {

            })
        }
    }
}
