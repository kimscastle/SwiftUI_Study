//
//  MyCustomTabView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/18.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}

struct MyCustomTabView: View {
    
    @State var tabIndex: TabIndex
    @State var largerScale: CGFloat = 1.5
    
    func changeMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: .green)
        case .cart:
            return MyView(title: "장바구니", bgColor: .red)
        case .profile:
            return MyView(title: "프로필", bgColor: .blue)
        }
    }
    
    
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.red
        case .profile:
            return Color.blue
        }
    }
    
    func calcCircleBgPositon(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
        }
    }
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        GeometryReader{ geometry in
            ZStack(alignment: .bottom){
                changeMyView(tabIndex: tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: calcCircleBgPositon(tabIndex: tabIndex, geometry: geometry), y: 0)
                    .foregroundColor(.white)
                
                VStack(spacing: 0) {
                    HStack(spacing: 0){
                        Button {
                            withAnimation{
                                tabIndex = .home
                            }

                        } label: {
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(tabIndex == .home ? largerScale : 1)
                                .foregroundColor(tabIndex == .home ? changeIconColor(tabIndex: tabIndex) : .gray)
                                .frame(width: geometry.size.width/3, height: 50)
                                .offset(y: tabIndex == .home ? -10 : 0)
                        }
                        .background(.white)
                        
                        Button {
                            withAnimation{
                                tabIndex = .cart
                            }
                        } label: {
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(tabIndex == .cart ? largerScale : 1)
                                .foregroundColor(tabIndex == .cart ? changeIconColor(tabIndex: tabIndex) : .gray)
                                .frame(width: geometry.size.width/3, height: 50)
                                .offset(y: tabIndex == .cart ? -10 : 0)
                        }
                        .background(.white)
                        
                        Button {
                            withAnimation{
                                tabIndex = .profile
                            }
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(tabIndex == .profile ? largerScale : 1)
                                .foregroundColor(tabIndex == .profile ? changeIconColor(tabIndex: tabIndex) : .gray)
                                .frame(width: geometry.size.width/3, height: 50)
                                .offset(y: tabIndex == .profile ? -10 : 0)
                        }
                        .background(.white)

                    }
                    Rectangle()
                        .frame(height: 20)
                        .foregroundColor(.white)
                        
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
