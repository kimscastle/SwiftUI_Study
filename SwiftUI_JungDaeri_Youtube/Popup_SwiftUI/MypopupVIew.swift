//
//  MypopupVIew.swift
//  SwiftUI_JungDaeri_Youtube
//
//  Created by uiskim on 2022/05/21.
//

import SwiftUI

struct MypopupVIew: View {
    
    @State var shouldShowBottomSoildMessage: Bool = false
    
    @State var shouldShowBottomToastMessage: Bool = false
    
    @State var shouldShowTopSoildMessage: Bool = false
    
    @State var shouldShowTopToastMessage: Bool = false
    
    @State var shouldShowPopUp: Bool = false


    
    func createBottomSolidMessage() -> some View{
        HStack(spacing: 10) {
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            VStack(alignment: .leading){
                Text("안내메세지")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("토스트 메세지 입니다!dasfafasfsadfsadfsafsafsafsafsafasfsfsafsfsfsafasfasfasfsfsdfsfsfsfsfsfsa")
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .background(.purple)
    }
    
    func createBottomToastMessage() -> some View {
        HStack(spacing: 10) {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90)
                .cornerRadius(20)
            
            VStack(alignment: .leading){
                Text("내고양이")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("토스트 메세지 입니다!dasfafasfsadfsadfsafsafsafsafsafasfsfsafsfsfsafassafsafsafasfsfsafsfsfsafassafsafsafasfsfsafsfsfsafassafsafsafasfsfsafsfsfsafasfasfasfsfsdfsfsfsfsfsfsa")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
        }
        .padding()
        .frame(width: 300)
        .background(.green)
        .cornerRadius(20)
    }
    
    func createTopSolidMessage() -> some View{
        HStack(spacing: 10) {
            Image("cat2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90)
                .cornerRadius(20)
            VStack(alignment: .leading){
                Text("안내메세지")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("토스트 메세지 입니다!dasfafasfsadfsadfsafsafsafsafsafasfsfsafsfsfsafasfasfasfsfsdfsfsfsfsfsfsa")
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, 20)
        .background(.blue)
    }
    
    func createTopToastMessage() -> some View {
        HStack(spacing: 10) {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90)
                .cornerRadius(20)
            
            VStack(alignment: .leading){
                Text("내고양이")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("토스트 메세지 입니다!dasfafasfsadfsadfsafsafsafsafsafasfsfsafsfsfsafassafsafsafasfsfsafs")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
        }
        .padding()
        .frame(width: 300)
        .background(.red)
        .cornerRadius(20)
    }
    
    func createPopUp() -> some View{
        VStack(spacing: 10) {
                    Image("cat2")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 100, height: 100)

                    Text("개발하는 정대리")
                        .foregroundColor(.white)
                        .fontWeight(.bold)

                    Text("한국에서 개발자로 살아남기!\n예전에 저처럼 프로그래머가 되고 싶지만\n그 길을 몰라 해매는 분들에게 도움 되고자\n이 채널을 운영하기 시작했습니다.\n\n프로그램에 관심 있는 분들이나 취업 준비생 분들께\n조금이나마 도움이 되었으면 합니다.\n아자 아자 화이팅!😍👍")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                        .multilineTextAlignment(.center)

                    Spacer().frame(height: 10)

                    Button(action: {
                        shouldShowPopUp = false
                    }) {
                        Text("닫기")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    .frame(width: 100, height: 40)
                    .background(Color.white)
                    .cornerRadius(20.0)
                }
        //        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                    .padding(.horizontal, 10)
                .frame(width: 300, height: 400)
                .background(.orange)
                .cornerRadius(10.0)
                .shadow(radius: 10)
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
                
                Button {
                    shouldShowBottomToastMessage.toggle()
                } label: {
                    Text("바텀토스트메세지")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .padding()
                        .background(.green)
                        .cornerRadius(20)
                }
                
                Button {
                    shouldShowTopSoildMessage.toggle()
                } label: {
                    Text("탑솔리드메세지")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .padding()
                        .background(.blue)
                        .cornerRadius(20)
                }
                
                Button {
                    shouldShowTopToastMessage.toggle()
                } label: {
                    Text("탑토스트메세지")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .padding()
                        .background(.red)
                        .cornerRadius(20)
                }
                
                Button {
                    shouldShowPopUp.toggle()
                } label: {
                    Text("팝업")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .padding()
                        .background(.orange)
                        .cornerRadius(20)
                }
                
                Spacer()
            }//Vstack
        }//Zstack
        .edgesIgnoringSafeArea(.all)
        .popup(isPresented: $shouldShowBottomSoildMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            createBottomSolidMessage()
        })
        .popup(isPresented: $shouldShowBottomToastMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            createBottomToastMessage()
        })
        .popup(isPresented: $shouldShowTopSoildMessage, type: .toast, position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            createTopSolidMessage()
        })
        .popup(isPresented: $shouldShowTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            createTopToastMessage()
        })
        .popup(isPresented: $shouldShowPopUp, type: .default, position: .bottom, animation: .spring(), closeOnTap: false, closeOnTapOutside: true, view: {
            createPopUp()
        })
    }
}

struct MypopupVIew_Previews: PreviewProvider {
    static var previews: some View {
        MypopupVIew()
    }
}
