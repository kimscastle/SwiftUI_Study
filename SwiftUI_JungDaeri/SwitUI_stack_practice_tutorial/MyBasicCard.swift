//
//  MyBasicCard.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20){
            
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
                //Rectangle().frame(height: 0)
                Divider().opacity(0)
                Text("유튭 라이브 버닝")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("유튭 라이브 버닝")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
