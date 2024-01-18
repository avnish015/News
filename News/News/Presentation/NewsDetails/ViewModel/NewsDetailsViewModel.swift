//
//  NewsDetailsViewModel.swift
//  News
//
//  Created by Avnish Kumar on 03/01/24.
//

import Foundation

final class NewsDetailsViewModel: ObservableObject {
        
    var imageURL: URL?
    var title: String
    var description: String
    var author: String
    var publishedAt: String
    
    
    init(article: Article) {
        self.imageURL = article.imageURL
        self.title = article.title
        self.description = article.description ?? .empty
        self.author = article.author ?? DisplayStrings.other.unknownSource
        self.publishedAt = article.publishedAt.formattedDate()?.string() ?? .empty
    }
}
