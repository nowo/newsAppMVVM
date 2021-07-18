//
//  Article.swift
//  GoodNews
//
//  Created by ecinar on 18.07.2021.
//

import Foundation

struct ArticleList: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String

}
