//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 80) {
            Image("profile")
            //Image파일안에는 파일명을 넣으면 되는데 확장자는 넣지 않아도 괜찮다
                .resizable()
            //이미지의 크기를 바꾸기 위해서는 .resizable이라는 modifier를 먼저선언해주어야한다.
                .aspectRatio(contentMode: .fit)
            //이미지의 비율을 유지하면서 크기를 조절한다 contentMode에 들어가는 값으로는 .fit과 .fill이 있다.
                .frame(width: 300, height: 200)
            //.frame은 말그대로 크기를 정해주는걸 뜻한다. 각각의 parameter에 값을 넣어주면 된다.
            //.aspectRation다음에 .frame을 써줘야 생각한대로 이미지가 바뀐다.
            //.frame이 이미지의 크기이기때문에 이거 자체가 영억이 된다. 아래처럼 원으로 잘라도 이 영역은 변하지 않는다.
                .clipShape(Circle())
            //.clipShape안에는 모양이들어가는데 "모양()"의 형태로 들어간다.
                .overlay(Circle().stroke(.gray, lineWidth: 3))
            //overlay는 zstack과 같은 기능이고 위에다 쌓는 용도이다 stroke는 원의 선을 만든다는 뜻(그냥 빈 원을 만드는거 같다.)
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
            //SFsymbol을 사용할 때는 Image안에 systemName: ""을 넣어주면 된다.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
