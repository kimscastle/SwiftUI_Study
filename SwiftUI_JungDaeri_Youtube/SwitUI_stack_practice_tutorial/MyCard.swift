//
//  MyCard.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/14.
//

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20){
            
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
                //Rectangle().frame(height: 0)
                Divider().opacity(0)
                Text(title)
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책읽기", start: "1PM", end: "3PM", bgColor: .green)
    }
}
