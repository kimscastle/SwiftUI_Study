//
//  HomeVM.swift
//  SwiftUI_Netflix
//
//  Created by uiskim on 2022/05/28.
//

import Foundation

class HomeVM: ObservableObject {
    
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMoives
        movies["Stand-Up Comedy"] = exampleMoives.shuffled()
        movies["New Releases"] = exampleMoives.shuffled()
        movies["Watch It Again"] = exampleMoives.shuffled()
        movies["Sci-Fi Movies"] = exampleMoives.shuffled()
    }
}
 
