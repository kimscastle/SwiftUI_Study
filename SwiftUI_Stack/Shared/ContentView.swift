//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/04/26.

//SwiftUI에서는 두개 이상의 View를 나열하기 위해서는 Stack을 사용합니다.
//Stack에는 나열되는 방향에 따라 크게 3가지가 있습니다.
//Vertical(세로) 방향으로 하위 View들을 나열하는 VStack,
//Horizontal(가로) 방향으로 하위 View들을 나열하는 HStack,
//하위 View들을 겹치면서 나열하는 ZStack

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(alignment: .leading) {
//        //VStack안에 parameter로 alignment를 넣을 수 있는데 이는 하위 view의 정렬을 어느쪽으로 할지를 정한다.
//        //전체적인 위치를 왼쪽으로 붙일지 가운데다둘지 오른쪽으로 붙일지가 아니라 가운데 위치에서 정렬을 어떻게 할지를 정한다.
//        //왼쪽정렬: .leading, 오른쪽정렬: .trailing, 가운데정렬(defalt): .center
//        //spacing은 간격을
//            Text("Hello")
//                .background(Color.yellow)
//            Text("SwiftUI")
//                .background(.green)
//        }
//        .font(.system(size: 50))
//        .foregroundColor(.pink)
//        //VStack안에 있는 글자를 모두 같은 유형으로 바꾸려면 VStack밖에서 선언해줘도 된다
                HStack(alignment: .bottom, spacing: 30) {
        //VStack과 다른점은 alignment의 요소값이 왼쪽 오른쪽이 아니라 위아래라는점이 다르다
            Text("Hello")
                .background(.blue)
            Text("Swift \nUI")
                .background(.green)
        }
        .font(.system(size: 50))
        .foregroundColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
