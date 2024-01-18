//
//  ArticleListServiceFactory.swift
//  News
//
//  Created by Avnish Kumar on 17/01/24.
//

import Foundation

enum ArticleListServiceFactory {
    
    static func createService() -> ArticleListServiceProtocol {
        let urlSession = URLSession(configuration: .default)
        let apiClient = URLSessionApiClient(session: urlSession)
        return ArticleListService(apiClient: apiClient)
    }
}
