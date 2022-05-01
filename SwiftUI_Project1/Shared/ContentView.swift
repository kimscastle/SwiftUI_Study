//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/01.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleOne = false
    @State private var toggleTwe = false
    var body: some View {
        ZStack {
            Color.backGround.ignoresSafeArea()
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .foregroundColor(.mainGreen)
                    
                    Spacer().frame(width: 120)
                    
                    Text("Profile")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Spacer().frame(height: 200)
                }
                Image("sv_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140, height: 140)
                
                VStack{
                    Text("Codershigh")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    ZStack{
                        Capsule()
                            .frame(width: 120, height: 25)
                            .foregroundColor(.mainGreen)
                        Text("Edit Profile")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                    }
                    Text("@ios developer")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                    
                    HStack{
                        HStack(spacing: 5){
                            Image("instagram")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15, height: 15)
                            Text("coders_high_")
                        }
                        Spacer().frame(width: 20)
                        HStack(spacing: 5){
                            Image("youtube")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15, height: 15)
                            Text("스위프트하이")
                        }
                    }
                    .font(.system(size: 13, weight: .semibold, design: .rounded))
                    .foregroundColor(.mainGreen)
                    
                    HStack{
                        HStack(alignment: .bottom, spacing: 5){
                            Text("105")
                                .font(.system(size: 25, weight: .heavy, design: .rounded))
                            Text("follwers")
                                .font(.system(size: 13, weight: .semibold, design: .rounded))
                        }
                        Spacer().frame(width: 20)
                        HStack(alignment: .bottom, spacing: 5){
                            Text("96")
                                .font(.system(size: 25, weight: .heavy, design: .rounded))
                            Text("follwing")
                                .font(.system(size: 13, weight: .semibold, design: .rounded))
                        }
                    }
                    .foregroundColor(.white)
                    
                    Rectangle().frame(height: 1).foregroundColor(.white)
                    
                    Spacer().frame(height: 40)
                    
                    HStack {
                        HStack{
                            Image(systemName: "lock")
                            Text("Private Account")
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        
                        Toggle("", isOn: $toggleOne)
                            .toggleStyle(SwitchToggleStyle(tint: .mainGreen))
                            .frame(width: 150)
                    }
                    
                    HStack {
                        HStack{
                            Image(systemName: "bell")
                            Text("Do not disturb")
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        
                        Toggle("", isOn: $toggleTwe)
                            .toggleStyle(SwitchToggleStyle(tint: .mainGreen))
                            .frame(width: 160)
                    }
                    
                }
                Spacer().frame(height: 230)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
