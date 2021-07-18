//
//  WebService.swift
//  GoodNews
//
//  Created by ecinar on 18.07.2021.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
          
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                if  let ArticleList = try? JSONDecoder().decode(ArticleList.self, from: data) {
                    completion(ArticleList.articles)
                }
                
                
                print(data)
            }
        }.resume()
    }
}
