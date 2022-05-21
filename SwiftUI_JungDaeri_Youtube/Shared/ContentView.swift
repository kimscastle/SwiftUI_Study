//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/21.
//

import SwiftUI

struct ContentView: View {
    //@State : 값의 변화를 감지
    //일반 문법에서는 그냥 var만 선언해주면 값을 변화시킬수있는데 SwiftUI에서는 변화시킬값에는 @State를 붙여줘야한다
    @State private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? .yellow : .black)
                //탭 제스쳐 추가
                .onTapGesture {
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .padding(30)
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
