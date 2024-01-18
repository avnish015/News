//
//  ArticleDataModel.swift
//  News
//
//  Created by Avnish Kumar on 17/01/24.
//

import Foundation

    struct ArticleDataModel: Identifiable, Codable {
        var id: String
        var title: String
        var author: String?
        var description: String?
        var url: String
        var urlToImage: String?
        var publishedAt: String
        
        enum CodingKeys: CodingKey {
            case id
            case author
            case title
            case description
            case url
            case urlToImage
            case publishedAt
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decodeIfPresent(String.self, forKey: .id) ?? UUID().uuidString
            self.author = try container.decodeIfPresent(String.self, forKey: .author)
            self.title = try container.decode(String.self, forKey: .title)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.url = try container.decode(String.self, forKey: .url)
            self.urlToImage = try container.decodeIfPresent(String.self, forKey: .urlToImage)
            self.publishedAt = try container.decode(String.self, forKey: .publishedAt)
        }
        
        init(id: String, name: String?, author: String?, title: String, description: String?, url: String, urlToImage: String?, publishedAt: String) {
            self.id = id
            self.author = author
            self.title = title
            self.description = description
            self.url = url
            self.urlToImage = urlToImage
            self.publishedAt = publishedAt
        }
    }

extension ArticleDataModel {
    static let sampleArticle: Article = Article(id: UUID().uuidString, author: "David Henderson", title: "An EV Canary in the Coal Mine?", description: "I’ve written before about why I think California is the canary in the coal mine for the success or failure of electric vehicle (EV) mandates.\nNow, based on an experience I had in Phoenix last Thursday", url: "https://www.econlib.org/an-ev-canary-in-the-coal-mine/", urlToImage: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg", publishedAt: "2023-12-04T18:46:48Z")
}
