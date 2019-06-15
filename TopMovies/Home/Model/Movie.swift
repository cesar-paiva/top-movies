//
//  Movie.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var title: String?
    var categories: [String]?
    var duration: String?
    var rating: Double?
    var summary: String?
    var image: String?
    var itemType: ItemType?
    
    var strCategories: String {
        return categories?.joined(separator: " | ") ?? ""
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case categories
        case duration
        case rating
        case summary = "description"
        case image
    }
}
