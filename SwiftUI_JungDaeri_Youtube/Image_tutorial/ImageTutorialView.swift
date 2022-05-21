//
//  ImageTutorialView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct ImageTutorialView: View {
    var body: some View {
            ScrollView {
            VStack{
                CircleImageView()
                HStack{
                    NavigationLink(destination: MyWebView(urlToLoad: "http://naver.com").edgesIgnoringSafeArea(.all)){
                        Text("네이버")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding()
                            .background(.green)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "http://google.co.kr").edgesIgnoringSafeArea(.all)){
                        Text("구글")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding()
                            .background(.blue)
                            .cornerRadius(20)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("내 프로필"))
            .navigationBarItems(trailing: NavigationLink(destination: Text("설정화면입니다")){
                Image(systemName: "gear")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            })
        }

    }
}

struct ImageTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTutorialView()
    }
}
