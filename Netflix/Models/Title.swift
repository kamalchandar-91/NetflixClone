//
//  Movie.swift
//  Netflix
//
//  Created by kamal chandar on 14/03/25.
//

import Foundation

struct TrendingTitleResponse: Codable {
    let results: [Title]
}


struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
}
