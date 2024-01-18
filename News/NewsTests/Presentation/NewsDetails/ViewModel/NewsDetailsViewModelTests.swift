//
//  NewsDetailsViewModelYest.swift
//  NewsTests
//
//  Created by Avnish Kumar on 04/01/24.
//

import XCTest
@testable import News

final class NewsDetailsViewModelTests: XCTestCase {

    
    private var viewModel: NewsDetailsViewModel!
    private var viewModelWithEmptyDetails: NewsDetailsViewModel!
    
    override func setUp() {
        viewModel = NewsDetailsViewModel(article: Article(id: UUID().uuidString, author: "David Henderson", title: "An EV Canary in the Coal Mine?", description: "I’ve written before about why I think California is the canary in the coal mine for the success or failure of electric vehicle (EV) mandates.\nNow, based on an experience I had in Phoenix last Thursday", url: "https://www.econlib.org/an-ev-canary-in-the-coal-mine/", urlToImage: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg", publishedAt: "2023-12-04T18:46:48Z"))
        viewModelWithEmptyDetails = NewsDetailsViewModel(article: Article(id: UUID().uuidString, author: "David Henderson", title: "An EV Canary in the Coal Mine?", description: nil, url: "https://www.econlib.org/an-ev-canary-in-the-coal-mine/", urlToImage: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg", publishedAt: "2023-12-04"))
    }

    func testNewsDetailViewModel() {
        XCTAssert(viewModel?.title == "An EV Canary in the Coal Mine?")
        XCTAssert(viewModel?.imageURL == URL(string: "https://www.econlib.org/wp-content/uploads/2023/12/Unknown.jpeg"))
        XCTAssert(viewModel?.publishedAt == "04-12-2023")
        XCTAssert(viewModel?.author == "David Henderson")
        XCTAssert(viewModel.description == "I’ve written before about why I think California is the canary in the coal mine for the success or failure of electric vehicle (EV) mandates.\nNow, based on an experience I had in Phoenix last Thursday")
    }
    
    func testNewsDetailViewModelWithEmptyDetail() {
        XCTAssert(viewModelWithEmptyDetails.publishedAt == String.empty)
        XCTAssert(viewModelWithEmptyDetails.description == String.empty)
    }
    
}
