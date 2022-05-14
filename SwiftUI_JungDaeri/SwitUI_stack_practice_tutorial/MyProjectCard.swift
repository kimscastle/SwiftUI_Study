//
//  MyProjectCard.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading , spacing: 0){
            Rectangle().frame(height: 0)
            Text("정대리 유튭 프로젝트")
                .padding(.bottom, 5)
                .font(.system(size: 23, weight: .bold, design: .rounded))
            Text("10 AM - 11 AM")
                .padding(.bottom, 10)
                .foregroundColor(.gray)
            HStack{
                Image("one")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.blue, lineWidth: 5))
                Image("two")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("three")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button {
                    print("버튼이 눌려졌습니다")
                    shouldShowAlert.toggle()
                    
                } label: {
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80, height: 50)
                        .background(.blue)
                        .cornerRadius(20)
                }
                .alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림입니다"))
                }
            }
        }
        .padding(30)
        .background(.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
