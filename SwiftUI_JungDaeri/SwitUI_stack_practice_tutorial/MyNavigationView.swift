//
//  MyNavigationView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/15.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView{
            
            MyList()
            .navigationTitle("안녕하세요")
            .navigationBarTitleDisplayMode(.large)//.large가 default
            .navigationBarItems(leading: Button {
                print("ghgh")
            } label: {
                Text("하하")
            }, trailing: NavigationLink(destination: Text("넘어온 뷰입니다")){
                Image(systemName: "bookmark.fill")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
            })//button을 넣어도 괜찮음
        }
    }
}




struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
