//
//  File.swift
//  News
//
//  Created by Avnish Kumar on 02/01/24.
//

import Foundation

final class ArticleCellViewModel: ObservableObject {
        
    var title: String
    var urlToImage: URL?
    var author: String
    var publishedAt: String
    
    init(article: Article) {
        self.title = article.title
        self.urlToImage = article.imageURL
        self.author = article.author ?? DisplayStrings.other.unknownSource
        self.publishedAt = article.publishedAt.formattedDate()?.string() ?? .empty
    }
}
