//
//  Movie.swift
//  SwiftUI_Netflix
//
//  Created by uiskim on 2022/05/28.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    //MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeason: Int?
    
    var episodes: [Episodes]?
    
    var promotionHeadline: String?
    
    var numberOfSeasonDisplay: String {
        if let num = numberOfSeason {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) season"
            }
        }
        return ""
    }
}
