//
//  MyVstackView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/09.
//

import SwiftUI

struct MyVstackView: View {
    
    @Binding var isActivated: Bool
    
    var body: some View {
        VStack{
            Text("1!")
                .font(.system(size: 60, weight: .bold, design: .rounded))
            Text("2!")
                .font(.system(size: 60, weight: .bold, design: .rounded))
            Text("3!")
                .font(.system(size: 60, weight: .bold, design: .rounded))
        }
        .background(self.isActivated ? .orange : .green)
        .padding(self.isActivated ? 5 : 30)
    }
}

//struct MyVstackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVstackView(isActivated: $isAcivated)
//    }
//}
