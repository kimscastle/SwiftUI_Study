//
//  CustomTabSwitcher.swift
//  SwiftUI_Netflix (iOS)
//
//  Created by uiskim on 2022/06/06.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTap]
    
    //_의 의미는 widthForTab(tab: tab) 말고 그냥 widthForTab(tab)만 쓸쑤있게됨
    //tab의 별명을 정해줄수있다고 생각하면 편함
    func widthForTab(_ tab: CustomTap) -> CGFloat {
        let string = tab.rawValue
//        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
        return string.widthOfString(font: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //Custom tab picker
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //Red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            //Button
                            Button {
                                //
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            })
            
            //Selected View
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

enum CustomTap: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            //코드 한줄 올리기 opt + cmd + [ or ]
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
