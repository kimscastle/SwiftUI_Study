//
//  HomeView.swift
//  SwiftUI_Netflix
//
//  Created by uiskim on 2022/05/28.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //main Vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButton()
                    
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButton: View {
    var body: some View {
        HStack {
            
            Button {
                //
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()

            Button {
                //
            } label: {
                Text("TV Show")
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Movies")
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("My List")
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
