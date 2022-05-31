//
//  Episodes.swift
//  SwiftUI_Netflix
//
//  Created by uiskim on 2022/05/31.
//

import Foundation

struct Episodes: Identifiable {
    
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var descrption: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
