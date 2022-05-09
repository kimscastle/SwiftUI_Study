//
//  MyTextView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/09.
//

import SwiftUI

struct MyTextView: View {
    
    @State private var index: Int = 0
    @Binding var isActivated: Bool
    
    //배경색 배열 준비
    private let backgroundColors: [Color] = [Color.red, Color.yellow, Color.blue, Color.green, Color.orange]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화상태 \(String(isActivated))")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(isActivated ? .yellow : .green)
                .background(.black)
            Spacer()
        }
        .background(backgroundColors[index])
        .onTapGesture {
            print("배경아이템이 클릭 되었다")
            self.index += 1
            self.index = self.index%5
            //underflow overflow
            //if(self.index == self.backgroundColors.count - 1){
            //    self.index = 0
            //}else{
            //    self.index += 1
            //}
        }
    }
}

//struct MyTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyTextView()
//    }
//}
