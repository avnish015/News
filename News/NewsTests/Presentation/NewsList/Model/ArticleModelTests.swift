//
//  ArticleModelTests.swift
//  NewsTests
//
//  Created by Avnish Kumar on 17/01/24.
//

import XCTest
@testable import News

final class ArticleModelTests: XCTestCase {
    
    private var article: Article!

    override func setUp() {
        article = Article(id: UUID().uuidString, author: "David Henderson", title: "An EV Canary in the Coal Mine?", description: "I’ve written before about why I think California is the canary in the coal mine for the success or failure of electric vehicle (EV) mandates.\nNow, based on an experience I had in Phoenix last Thursday", url: "https://www.econlib.org/an-ev-canary-in-the-coal-mine/", urlToImage: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg", publishedAt: "2023-12-04T18:46:48Z")
    }

    func testAccessabilityHint() throws {
        XCTAssert(article.accessabilityHint == "Name An EV Canary in the Coal Mine?, Author David Henderson Published At 04-12-2023" )
    }
    
    func testImageURL() throws {
        XCTAssert(article.imageURL == URL(string: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg"))
    }
}
