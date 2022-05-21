//
//  StackPracticeView.swift
//  SwiftUI_JungDaeri (iOS)
//
//  Created by uiskim on 2022/05/13.
//

import SwiftUI

struct StackPracticeView: View {
    @State var isNavigationBarHidden: Bool = false
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading) {
                    HStack(){
                        NavigationLink(destination: MyList()){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        Spacer()
                        NavigationLink(destination: ImageTutorialView()){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
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
            .navigationBarHidden(true)
            .ignoresSafeArea(.all)
        }
    }
}

struct StackPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        StackPracticeView()
    }
}
