//
//  MyGeometryReaderVstack.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/17.
//

import SwiftUI

enum Index {
    case one
    case two
    case three
}

struct MyGeometryReaderVstack: View {
    
    @State var index: Index = .two
    
    let centerPosition: (GeometryProxy) -> CGPoint = {proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        GeometryReader{ proxy in
            HStack {
                VStack(spacing: 0){
                    
                    Button {
                        withAnimation{
                            print("1번이 클릭되었습니다")
                            index = .one
                        }
                    } label: {
                        Text("1")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 100, height: proxy.size.height/3)
                            .padding(.horizontal, index == .one ? 50 : 0)
                            .background(.red)
                    }
                    Button {
                        
                        withAnimation{
                            print("2번이 클릭되었습니다")
                            index = .two
                        }
                    } label: {
                        Text("2")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 100, height: proxy.size.height/3)
                            .padding(.horizontal, index == .two ? 50 : 0)
                            .background(.green)
                    }
                    Button {
                        withAnimation{
                            print("3번이 클릭되었습니다")
                            index = .three
                        }
                    } label: {
                        Text("3")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 100, height: proxy.size.height/3)
                            .padding(.horizontal, index == .three ? 50 : 0)
                            .background(.blue)
                    }
                }
                .position(centerPosition(proxy))
            }
        }
        .background(.yellow)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
    }
}
