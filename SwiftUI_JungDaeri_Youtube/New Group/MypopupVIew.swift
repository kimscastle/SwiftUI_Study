//
//  MypopupVIew.swift
//  SwiftUI_JungDaeri_Youtube
//
//  Created by uiskim on 2022/05/21.
//

import SwiftUI

struct MypopupVIew: View {
    
    @State var shouldShowBottomSoildMessage: Bool = false
    
    func createBottomSolidMessage() -> some View{
        Text("토스트팝업입니다")
            .padding()
            .background(.red)
            .cornerRadius(20)
    }
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button {
                    shouldShowBottomSoildMessage.toggle()
                } label: {
                    Text("바텀솔리드메세지")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .padding()
                        .background(.purple)
                        .cornerRadius(20)
                }
                Spacer()
                HStack {
                    Image(systemName: "book.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .background(.yellow)
                    VStack(alignment: .leading){
                        Text("토스트 메세지 입니다!")
                            .foregroundColor(.white)
                        Text("토스트 메세지 입니다!")
                            .foregroundColor(.white)
                        Divider().opacity(0)
                    }
                    .background(.red)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width)
                .background(.purple)
                

            }//Vstack
        }//Zstack
        .popup(isPresented: $shouldShowBottomSoildMessage, type: .default, position: .bottom, animation: .default, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            createBottomSolidMessage()
        })
    }
}

struct MypopupVIew_Previews: PreviewProvider {
    static var previews: some View {
        MypopupVIew()
    }
}
