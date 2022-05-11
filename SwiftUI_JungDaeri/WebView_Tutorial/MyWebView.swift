//
//  MyWebView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/11.
//

import SwiftUI
import WebKit

//uikit의 uiview를 사용할 수 있도록 한다.
struct MyWebView: UIViewRepresentable  {

    var urlToLoad: String

    //ui view만들기
    func makeUIView(context: Context) -> WKWebView {
        
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
        
        return webview
    }
    //업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
    }
    
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "http://www.naver.com")
    }
}
