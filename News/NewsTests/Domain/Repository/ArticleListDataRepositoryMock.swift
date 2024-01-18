//
//  ArticleListDataManagerMock.swift
//  NewsTests
//
//  Created by Avnish Kumar on 04/01/24.
//

import Foundation
import PromiseKit
@testable import News

final class ArticleListDataRepositoryMock: ArticleListRepositoryProtocol {
    
    private let shouldFail: Bool
    private let error: Error?
    
    init(shouldFail: Bool, error: Error? = nil) {
        self.shouldFail = shouldFail
        self.error = error
    }
    
    func fetchArticleList(resource: NetworkResource?) -> PromiseKit.Promise<[ArticleDomainModel]> {
        return Promise<[ArticleDomainModel]> { seal in
            if shouldFail {
                seal.reject(HTTPError.badRequest)
            } else {
                seal.fulfill([ArticleDomainModel(id: UUID().uuidString, author: "David Henderson", title: "An EV Canary in the Coal Mine?", description: "I’ve written before about why I think California is the canary in the coal mine for the success or failure of electric vehicle (EV) mandates.\nNow, based on an experience I had in Phoenix last Thursday", url: "https://www.econlib.org/an-ev-canary-in-the-coal-mine/", urlToImage: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg", publishedAt: "2023-12-04T18:46:48Z")])
            }
        }
    }
}
