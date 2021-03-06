//
//  MenuContentView.swift
//  SwiftUI_JungDaeri_Youtube (iOS)
//
//  Created by uiskim on 2022/05/23.
//

import SwiftUI

let myPets: [String] = ["๋ฉ๋ฉ์ด๐ถ", "์ผ์น์ด๐ฑ", "์ฐ์ฐ์ด๐ญ"]

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
                Text("์ฐ์ธก์๋จ์ ๋ก๋ก๋ก์ ๋๋ฌ์ฃผ์ธ์")
            }
            .padding()
            .navigationTitle("ํ์ด์")
            //๋๋ฌ์ ์ค์๊ฐ์ผ๋ก ๋ณํ๋๊ฑฐ๋ฉด picker๋ฅผ ์ฐ๋๊ฒ ๋ง๊ณ  ๋ฒํผ์ ๋๋ฌ์ ํผ์ปค๋ทฐ๊ฐ๋์ค๊ฒํ ๊ฑฐ๋ฉด Menu๋ฅผ์จ์ผํจ
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction, content: {
                    Menu(content: {
                        Button {
                            print("๋ฒํผํด๋ฆญ!")
                            shouldShowAlert.toggle()
                            myText = "์ค๋๋ ๋นก์ฝ๋ฉ!"
                        } label: {
                            Label("์ค๋๋ ๋นก์ฝ๋ฉ!", systemImage: "flame.fill")
                        }
                        Text("ํํํ")
                        Text("ํํํ")

                        Section{
                            Button {
                                print("๋ฒํผํด๋ฆญ!")
                                shouldShowAlert.toggle()
                                myText = "์ง์์ ์ฌ๋๋ !"
                            } label: {
                                Label("์ง์์ ์ฌ๋๋ !", systemImage: "house.fill")
                            }
                        }

                        Section{
                            Button {
                            } label: {
                                Label("์ ํ์ผ ๋ง๋ค๊ธฐ", systemImage: "doc")
                            }
                            Button {
                            } label: {
                                Label("์ ํด๋ ๋ง๋ค๊ธฐ", systemImage: "folder")
                            }
                        }
                        Section{
                            Button {

                            } label: {
                                Label("ํ์ผ ๋ชจ๋ ์ญ์ ", systemImage: "trash")
                            }

                        }

                        Picker(selection: $selected, label: Text("์ ์๋๋ฌผ์ ํ")){
                            ForEach(myPets.indices, id: \.self){index in
                                Text("\(myPets[index])").tag(index)
                            }
                        }

                    }, label: {
                        Circle()
                            .foregroundColor(.yellow)
                            .frame(width: 50, height: 50)
                            .overlay(Label("๋๋ณด๊ธฐ", systemImage: "ellipsis")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            )
                    })//Menu
                })
            })
            .alert(isPresented: $shouldShowAlert, content: {
                Alert(title: Text("์๋ฆผ"), message: Text("\(myText)"), dismissButton: .default(Text("ํ์ธ")))
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
