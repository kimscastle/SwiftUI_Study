//
//  GlobalHelpers.swift
//  SwiftUI_Netflix
//
//  Created by uiskim on 2022/05/28.
//

import Foundation
import SwiftUI

//cmd + control + option + F = 새로만든 요소들 전체에 넣어줌
let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 1, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 2, defaultEpisodeInfo: exampleEpisodeInfo1, promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 3, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 4, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibla", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 5, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 6, defaultEpisodeInfo: exampleEpisodeInfo1, promotionHeadline: "Watch Season 6 Now")

let exampleMoives: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [.black.opacity(0), .black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}
