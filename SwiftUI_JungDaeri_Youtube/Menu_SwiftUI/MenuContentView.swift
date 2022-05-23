//
//  MenuContentView.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/05/23.
//

import SwiftUI

let myPets: [String] = ["멍멍이🐶", "야옹이🐱", "찍찍이🐭"]

struct MenuContentView: View {
    
    @State private var shouldShowAlert: Bool = false
    @State private var myText: String = ""
    @State private var selected: Int = 0
    
    var body: some View {
        NavigationView {
            VStack{
                Text("\(myPets[selected])")
                    .font(.system(size: 60))
                    .bold()
                Text("우측상단에 땡땡땡을 눌러주세요")
            }
            .padding()
            .navigationTitle("하이요")
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction, content: {
                    Menu(content: {
                        Button {
                            print("버튼클릭!")
                            shouldShowAlert.toggle()
                            myText = "오늘도 빡코딩!"
                        } label: {
                            Label("오늘도 빡코딩!", systemImage: "flame.fill")
                        }
                        Text("하하하")
                        Text("하하하")
                        
                        Section{
                            Button {
                                print("버튼클릭!")
                                shouldShowAlert.toggle()
                                myText = "집에서 쉬는날!"
                            } label: {
                                Label("집에서 쉬는날!", systemImage: "house.fill")
                            }
                        }
                        
                        Section{
                            Button {
                            } label: {
                                Label("새 파일 만들기", systemImage: "doc")
                            }
                            Button {
                            } label: {
                                Label("새 폴더 만들기", systemImage: "folder")
                            }
                        }
                        Section{
                            Button {
                                
                            } label: {
                                Label("파일 모두 삭제", systemImage: "trash")
                            }

                        }
                        
                        Picker(selection: $selected, label: Text("애완동물선택")){
                            ForEach(myPets.indices, id: \.self){index in
                                Text("\(myPets[index])").tag(index)
                            }
                        }
                        
                    }, label: {
                        Circle()
                            .foregroundColor(.yellow)
                            .frame(width: 50, height: 50)
                            .overlay(Label("더보기", systemImage: "ellipsis")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            )
                    })//Menu
                })
            })
            .alert(isPresented: $shouldShowAlert, content: {
                Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
            })
        }
    }
}

struct MenuContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
