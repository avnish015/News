//
//  Article.swift
//  News
//
//  Created by Avnish Kumar on 17/01/24.
//

import Foundation

struct Article: Identifiable {
    var id: String
    var title: String
    var author: String?
    var description: String?
    var url: String
    var urlToImage: String?
    var publishedAt: String
    
    var imageURL: URL? {
        guard let urlToImage else { return nil }
        return URL(string: urlToImage)
    }
    
    var accessabilityHint: String {
        let formattedDate = publishedAt.formattedDate()?.string()
        return "Name \(title), \(author != nil ? "Author \(author ?? .empty)" : .empty) \(formattedDate != nil ? "Published At \(formattedDate ?? .empty)" : .empty)"
    }
        
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

extension Article {
    static let sampleArticle: Article = Article(id: UUID().uuidString, author: "David Henderson", title: "An EV Canary in the Coal Mine?", description: "I’ve written before about why I think California is the canary in the coal mine for the success or failure of electric vehicle (EV) mandates.\nNow, based on an experience I had in Phoenix last Thursday", url: "https://www.econlib.org/an-ev-canary-in-the-coal-mine/", urlToImage: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg", publishedAt: "2023-12-04T18:46:48Z")
}
