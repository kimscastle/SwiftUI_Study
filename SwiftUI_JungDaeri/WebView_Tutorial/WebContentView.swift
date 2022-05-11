//
//  WebContentView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/11.
//

import SwiftUI

struct WebContentView: View {
    var body: some View {
        NavigationView{
            HStack{
                NavigationLink(destination: MyWebView(urlToLoad: "http://naver.com")
                    .edgesIgnoringSafeArea(.all)){
                    Text("네이버")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(20)

                }
                NavigationLink(destination: MyWebView(urlToLoad: "http://daum.net")
                    .edgesIgnoringSafeArea(.all)){
                    Text("다음")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .padding()
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "http://google.com")
                    .edgesIgnoringSafeArea(.all)){
                    Text("구글")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                }
            }
        }
    }
}

struct WebContentView_Previews: PreviewProvider {
    static var previews: some View {
        WebContentView()
    }
}
