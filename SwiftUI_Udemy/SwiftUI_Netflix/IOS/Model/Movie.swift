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
    var creators: String
    var cast : String
    
    var episodes: [Episodes]?
    
    var promotionHeadline: String?
    var numberOfSeasonDisplay: String {
        //조건에 부합하면 {}안에서 뭔가를 실행하는데 만약에 이조건이 만족하지 않을때 실행할 return이 필요하기때문에 (return "")을 사용
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
        //만약에 currentEpisode가 있다면 return이 있고 없다면 아래 return이 있기때문에 위의 numberOfSeasonDisplay처럼 빈return 값을 선언해줄 필요가 없다
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
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
