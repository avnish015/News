//
//  ArticleResponse.swift
//  News
//
//  Created by Avnish Kumar on 17/01/24.
//

import Foundation

struct ArticleResponse: Codable {
    var status: String
    var totalResults: Int
    var articles: [ArticleDataModel]
}
