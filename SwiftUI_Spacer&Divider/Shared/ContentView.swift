//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack{
//            Text("Genres + Moods")
//                .font(.system(size: 30, weight: .bold, design: .rounded))
//
//            Spacer().frame(height: 300)
//            //Spacer()를 넣으면 최대 크기의 빈공간을 만들어주고 뒤에 .frame()을 넣어주면 내가 원하는 만큼 공간을 넣어줄 수 있다.
//
//            Text("View as list")
//                .font(.system(size: 15, weight: .semibold, design: .rounded))
//                .foregroundColor(.gray)
//        }
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Text("Genres + Moods")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    
                    Spacer()
                    
                    Text("View as list")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                }
                
                Spacer().frame(height: 30)
                
                VStack{
                    HStack(spacing: 0){
                        ZStack {
                            Image("hiphop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Hip-Hop")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Image("pop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Pop")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 0){
                        ZStack {
                            Image("rock")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Rock")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Image("latin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Latin")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                    }
                }
                
                //Divider()
                //Divider은 custom이 어렵기때문에 내 임의대로 Divider선을 만들고 싶으면 그냥 rectangle을 쓰는게 낫다
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.red)
                
                Text("Podcasts")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
                Spacer().frame(height: 10)
                
                VStack(alignment: .leading){
                    Text("Part 1: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    //하나의 스택안에 있는 Text는 전부 정렬을 한번에 지정할 수 있지만 스택안에 스택의 정렬은 따로 저장해주어야한다
                    
                    Spacer()
                    
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("YESTERDAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                }
                
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading){
                    Text("Part 2: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    //하나의 스택안에 있는 Text는 전부 정렬을 한번에 지정할 수 있지만 스택안에 스택의 정렬은 따로 저장해주어야한다
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("YESTERDAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                }
            }
        }
        .padding()
        //4방향에 적당한 공간을 주고 싶을 때 사용
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
