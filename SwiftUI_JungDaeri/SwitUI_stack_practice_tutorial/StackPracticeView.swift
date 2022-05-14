//
//  StackPracticeView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct StackPracticeView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading) {
                HStack(){
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                
                Text("정대리 할일 목록")
                    .font(.system(size: 40, weight: .bold))
                ScrollView {
                    VStack{
                        MyProjectCard()
                        MyBasicCard()
                        MyCard(icon: "pencil.circle.fill", title: "필기노트", start: "1 PM", end: "3 PM", bgColor: .red)
                        MyCard(icon: "pencil.circle.fill", title: "필기노트", start: "2 PM", end: "6 PM", bgColor: .green)
                        MyCard(icon: "pencil.circle.fill", title: "필기노트", start: "3 PM", end: "6 PM", bgColor: .blue)
                        MyCard(icon: "pencil.circle.fill", title: "필기노트", start: "4 PM", end: "6 PM", bgColor: .orange)
                        MyCard(icon: "pencil.circle.fill", title: "필기노트", start: "5 PM", end: "6 PM", bgColor: .brown)
                    }
                }
            }
            .padding()
            .padding(.top, 30)
            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 50, height: 50)
                .overlay(Image(systemName: "plus").foregroundColor(.white))
                .padding()
                .shadow(radius: 20)
        }
        .ignoresSafeArea(.all)
    }
}

struct StackPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        StackPracticeView()
    }
}