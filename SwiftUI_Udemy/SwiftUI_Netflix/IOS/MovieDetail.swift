//
//  MovieDetail.swift
//  SwiftUI_Netflix (iOS)
//
//  Created by uiskim on 2022/05/30.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        //close
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width/2.5)
                        
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red, action: {
                            //
                        })
                        //Current Episode Information
                        //1.Default
                        //2.Personalized - where the user currentlt is
                        CurrentEpisodeInfomation(movie: movie)

                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true, action: {
                                
                            })
                            
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true, action: {
                                
                            })
                            
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true, action: {
                                
                            })
                            Spacer()
                        }
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        
//                        CustomTabSwitcher()
                        
                    }
                    .padding(.horizontal, 10)
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingVIew(rating: movie.rating)
            Text(movie.numberOfSeasonDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingVIew: View {
    var rating: String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12, weight: .bold))
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
                
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
                
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 1)
    }
}

struct CurrentEpisodeInfomation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
