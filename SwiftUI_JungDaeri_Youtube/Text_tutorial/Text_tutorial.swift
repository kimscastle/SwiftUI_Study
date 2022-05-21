//
//  Text_tutorial.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/11.
//

import SwiftUI

struct Text_tutorial: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "Y.M.d"
        return formatter
        
    }()
    
    var today = Date()
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("오늘의 날짜입니다 : \(today, formatter: Text_tutorial.dateFormat)")
        }
    }
}

struct Text_tutorial_Previews: PreviewProvider {
    static var previews: some View {
        Text_tutorial()
    }
}
