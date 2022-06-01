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
    
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaultEpisodeInfo: CurrentEpisodeInfo
    
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
    
    var episodeInfoDisplay: String {
        //만약에 currentEpisode가 있다면
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName), im"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
