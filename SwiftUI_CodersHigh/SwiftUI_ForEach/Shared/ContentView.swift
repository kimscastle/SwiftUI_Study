//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/01.
//

import SwiftUI

struct ContentView: View {
    
    let imageList: [String] = ["airplayaudio", "airplayvideo", "airpods", "airpodspro", "applelogo"]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(imageList, id: \.self) {
            //0..<imageList같은 방식은 숫자를 넣어서 하는 방식이고
            //아얘 리스트 전체의 요소를 하나하나 넣는방식이 있다
            //이건 그냥 파이썬에서 리스트 for i in list이 방식이라고 생각하면 될듯
            // \.self인거 주의
                Image(systemName: $0)
            //그러면 그냥 리스트 요소이름을 하나하나 넣는거니까 이렇게 systemName: index이렇게 하면됨
            //{index in ~~~~}이렇게 해도되는데 앞에서 부터 하나씩 가져온다는 의미의 $0을 써도 된다
            //리스트 전체를 가져올때는 이게 가장 깔끔한 방식인듯
                    .padding(30)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
