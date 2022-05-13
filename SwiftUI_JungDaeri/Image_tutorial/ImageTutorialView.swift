//
//  ImageTutorialView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct ImageTutorialView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("myImage")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 10)
                    .offset(y: -150)
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
        }
    }
}

struct ImageTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTutorialView()
    }
}
