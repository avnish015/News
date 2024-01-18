//
//  NewsDetailsUITest.swift
//  NewsUITests
//
//  Created by Avnish Kumar on 04/01/24.
//

import XCTest

final class NewsDetailsUITests: XCTestCase {
    
    private let newsListViewPage = NewsListPage()
    private let newsDetailsPage = NewdDetailsPage()

    override func setUpWithError() throws {
        App.launch(argument: "isTestSuccess")
        continueAfterFailure = false
    }

    func testNewsDetail() throws {
        App.removeArgument(argument: AppLaunchArgument.NewsListSuccess.rawValue)
        App.launch(argument: AppLaunchArgument.NewsListSuccess.rawValue)
        newsListViewPage.selectFirstCell()
        newsListViewPage.shouldSeeNewsDetailsPage()
        newsDetailsPage.shouldSeeNewsDetails()
    }
}
