//
//  ArticleDomainModel.swift
//  News
//
//  Created by Avnish Kumar on 02/01/24.
//

import Foundation

struct ArticleDomainModel: Identifiable {
    var id: String
    var title: String
    var author: String?
    var description: String?
    var url: String
    var urlToImage: String?
    var publishedAt: String
    
    init(id: String, author: String?, title: String, description: String?, url: String, urlToImage: String?, publishedAt: String) {
        self.id = id
        self.author = author
        self.title = title
        self.description = description
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
    }
}
