//
//  CircleImageView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(Circle().foregroundColor(.black).opacity(0.2))
            .overlay(Circle().stroke(.red, lineWidth: 10).padding())
            .overlay(Circle().stroke(.yellow, lineWidth: 10).padding(30))
            .overlay(Circle().stroke(.blue, lineWidth: 10))
            .overlay(
                Text("호호")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
            )
            .padding()
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
